class CT_Mutator_PUG extends Rx_Mutator;

var CT_Sys_Mutator SystemMutator;

var bool modPackageInitComplete;
var bool mutatorInitDone;

// PreBeginPlay() executes before.. Play. Meaning this is the best time to change the purchase terminal! Thank you Handepsilon for providing this method!
function PreBeginPlay() 
{
    `Log("********************Breaking the game initiated!********************"); // Basically verification #1
    
    if (InStr(WorldInfo.GetMapName(true), "BH-") == -1) // Although NvN isn't on.. any of the CT servers, let's make sure we don't fuck over its purchase terminal.
    {
        `Log("Changing terminal!"); // Basically verification #2
        Rx_Game(WorldInfo.Game).PurchaseSystemClass = class'CT_PurchaseSystem'; // We tell the game to use our PT terminal.
        if(Rx_Game(WorldInfo.Game).PurchaseSystem != None) // Means there is also a purchase system...
        {
            Rx_Game(WorldInfo.Game).PurchaseSystem.Destroy(); // So we destroy it!

            Rx_Game(WorldInfo.Game).PurchaseSystem = spawn(class'CT_PurchaseSystem', self,'PurchaseSystem',Location,Rotation); // And set our purchase terminals!
            Rx_Game(WorldInfo.Game).PurchaseSystem.SetVehicleManager(Rx_Game(WorldInfo.Game).VehicleManager);

        }
    }
}

simulated function Tick(float DeltaTime)
{
	if ( SystemMutator != None )
		SystemMutator.OnTick(DeltaTime);
}


function InitMutator(string options, out string errorMessage)
{
	local String mapname;

	modPackageInitComplete = false;

	if ( mutatorInitDone )
	{
		`log("[CT-Mutator] Attempted to InitMutator twice, stopped this...");
		return;
	}

	mutatorInitDone = true;

    mapname=WorldInfo.GetmapName();
	`log ( "[CT-MAP-FINDER] Found map " $ mapname);

	SystemMutator = spawn(class'CT_Sys_Mutator');
	if ( SystemMutator != None )
		SystemMutator.InitSystem();

	super(Mutator).InitMutator(Options, ErrorMessage);
}

function OnMatchStart()
{
	`log( "############# MATCH HAS STARTED IN CT CODE #############" );
	class'CT_UtilitiesX'.static.SendMessageToAllPlayers("Welcome to Constructive Tyranny.\nThis is a modified server with some changes to the game!\nEnjoy your stay!", 400);
}
/* 
function bool IsPlayerCTMember(string SteamID)
{
    local string member;

    // Loop around each donator inside the INI config file
    foreach CTPlayerList(member)
        if ( InStr(SteamID, member) >= 0 )
            return true;

    return false;
}
*/
defaultproperties
{
   Name="CT_Mutator_PUG"
   ObjectArchetype=UTMutator'utgame.Default__UTMutator'
}
