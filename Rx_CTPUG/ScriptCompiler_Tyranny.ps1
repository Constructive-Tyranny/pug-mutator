# Powershell script version 1.0: written by Mark "AlienX" Phillips
#   - Version 1.2: Written by Bas "Sho" Imth
#
# Functionality?
#   Copies the current mutator from github repo to network share, compiles scripts, copies compiled .u file to RenX Game and runs game if script compile was a success.
#
# Improvements?
#   - Take away the hard coded directories, put into config file perhaps
#   - This script does not automagically insert the mutator name into the UDKEngine INI File ModEditPackages section, do this yourself.
#   - There is ZERO error checking, have fun with that.
#
# How Does It Work?
#   You'll probs have to change the ExecutionPolicy on your local PC, to do this:
#   1) Run PoSh as an admin
#   2) Execute the following: 'Set-ExecutionPolicy -ExecutionPolicy RemoteSigned'
#   3) Profit!
#
#   To Run:
#    1) Open powershell window, probs as admin to be safe all dirs are accessable
#    2) Set-Location to the directory where this script is
#    3) Run the file .\ScriptCompiler.ps1 (tab is ur friend)

########################################
## [[ CONFIGURABLE VARIABLES START ]] ##
########################################



# What is the mutators sub folder name, where the class files are?
[string]$SubFolderName = "Classes"

# What's the end result mutator name?
[string]$MutatorName = "CT_Mutator"

# What is the name of the mutator plus the init class that's used during RenX startup?
[string]$MutatorStartupParam = "CT_Mutator.CT_Mutator_PUG"

# Where is RenX installed? (root path, not to the binary - we'll work that out for you)
[string]$RenXBaseDirectory = "E:\Renegade X Servers\9.Custom"

# Where is the UDK Directory? (root path, not to the binary)
[string]$RenXUDKDirectory = "C:\Program Files (x86)\Renegade X SDK"

# Change these if you want.
[string]$RenXMap= "CNC-Walls"
[string]$RenXAdditionalStartupParams = "-log"

######################################
## [[ CONFIGURABLE VARIABLES END ]] ##
######################################

## Do not touch anything below this line

# Our location:
[string]$MyFolder = Push-Location 
[string]$RenXBinary = $RenXBaseDirectory + "\Binaries\Win64\UDK.exe"
[string]$UDKBinary = $RenXUDKDirectory + "\Binaries\Win64\UDK.exe"
[string]$FinalMutatorPath = $RenXBaseDirectory + "\UDKGame\CookedPC\" + $MutatorName + ".u"
[string]$CompiledMutatorPath = $RenXUDKDirectory + "\UDKGame\Script\" + $MutatorName + ".u"
[string]$UDKMutatorSourcePath = $RenXUDKDirectory + "\Development\Src\" + $MutatorName + "\Classes"
[string]$MutatorPath = $MyFolder + "\" + $SubFolderName

# Copy the contents of $MutatorPath to $UDKMutatorSorucePath
if ( (Test-Path $UDKMutatorSourcePath -PathType Container) -ne $true )
{
    Write-Output "Directory $UDKMutatorSourcePath does not exist, creating it"
    New-Item -ItemType Directory -Path $UDKMutatorSourcePath | Out-Null
}

Write-Output "Removing files from dest dir"
Remove-Item -Path $UDKMutatorSourcePath\* -Filter *.* -Confirm:$false -Recurse
Sleep -seconds 1
Write-Output "Copying files from $SubFolderName to $UDKMutatorSourcePath"
Copy-Item ($MutatorPath + "\*") $UDKMutatorSourcePath -Force | Out-Null
Write-Output " --> Done"

#Run UDK.EXE MAKE
Write-Output "Running $UDKBinary MAKE - Check for errors and close the window once done"
$process = Start-Process $UDKBinary -ArgumentList "make -unattended -stripsource" -PassThru -Wait -WorkingDirectory $RenXUDKDirectory

Write-host "Continue?" -ForegroundColor Yellow 
    $Readhost = Read-Host " ( y / n ) " 
    Switch ($ReadHost) 
     { 
       N {exit 0} 
       Y {} #do nothing
       Default {exit 0} 
     } 

#If the file exists, copy it to RenX CookedPC
Write-Output "Checking for Mutator: $CompiledMutatorPath"
if ( (Test-Path $CompiledMutatorPath -PathType Any) -eq $true )
{
    #Write-Output "Build Passed, copying to Renx"
    Copy-Item ($CompiledMutatorPath) $FinalMutatorPath
    Write-Output "Starting Game"
    Start-Process $RenXBinary -ArgumentList "server $RenXMap?Mutator=$MutatorStartupParam $RenXAdditionalStartupParams"
} else {
    Write-Output " --------- BUILD FAILED ----------- "
}
