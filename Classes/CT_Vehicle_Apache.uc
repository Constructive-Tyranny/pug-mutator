/*********************************************************
*
* File: Rx_Vehicle_Apache.uc
* Author: RenegadeX-Team
* Poject: Renegade-X UDK <www.renegade-x.com>
*
* Desc:
*
*
* ConfigFile:
*
*********************************************************
*
*********************************************************/
class CT_Vehicle_Apache extends Rx_Vehicle_Apache;

defaultproperties
{

    MaxDesireability = 0.8 // todo: reactivate when flying AI is fixed
    
    missleBayToggle = 0;
    ExitRadius=150.0
    
    fpCameraTag[0]=CamViewGun

//========================================================\\
//************** Vehicle Physics Properties **************\\
//========================================================\\

    Health=400
    bLightArmor=false
	bisAirCraft=true
    bFollowLookDir=false

	/************************/
	/*Veterancy Multipliers*/
	/***********************/
	
	
	//VP Given on death (by VRank)
	VPReward(0) = 8 
	VPReward(1) = 10 
	VPReward(2) = 12 
	VPReward(3) = 16 
	
	VPCost(0) = 30
	VPCost(1) = 70
	VPCost(2) = 150
	
	Vet_HealthMod(0)=1 //400
	Vet_HealthMod(1)=1.125 //450
	Vet_HealthMod(2)=1.25 //500
	Vet_HealthMod(3)=1.5 //600 
	
	Vet_SprintSpeedMod(0)=1.0
	Vet_SprintSpeedMod(1)=1.05
	Vet_SprintSpeedMod(2)=1.1
	Vet_SprintSpeedMod(3)=1.15
	
	/**********************/
	

   AirSpeed=775.0
	MaxSpeed=1000.0
	GroundSpeed=1100.0

//========================================================\\
//*********** Vehicle Seats & Weapon Properties **********\\
//========================================================\\
	Seats(0)={( GunClass=class'CT_Vehicle_Apache_Weapon',
                GunSocket=("GunSocket","Missile_Left","Missile_Right"),
                TurretControls=(TurretPitch,TurretRotate,MissilePitch,MissileRotate),
                CameraTag=CamView3P,
                CameraBaseOffset=(Z=25),
                CameraOffset=-400,
                bSeatVisible=true,
                SeatBone=b_DriverLocation,
                SeatSocket=DriverSocket,
                SeatOffset=(X=0,Y=0,Z=0),
                SeatRotation=(Pitch=0,Yaw=0),
                MuzzleFlashLightClass=class'RenX_Game.Rx_Light_Tank_MuzzleFlash'
				// WeaponEffects=((SocketName=GunSocket),(SocketName=Missile_Left),(SocketName=Missile_Right))
                )}
            

//  TurretPassengerIndex = 1
}