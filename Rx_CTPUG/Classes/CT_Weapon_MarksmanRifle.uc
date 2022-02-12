class CT_Weapon_MarksmanRifle extends Rx_Weapon_MarksmanRifle;


defaultproperties
{

	bAutoFire = false

	AttachmentClass=class'Rx_Attachment_MarksmanRifle'
	
	//-------------- Recoil
	RecoilDelay = 0.02
	MinRecoil = 100.0
	MaxRecoil = 120.0
	MaxTotalRecoil = 5000.0
	RecoilYawModifier = 0.5 // will be a random value between 0 and this value for every shot
	RecoilInterpSpeed = 42.0
	RecoilDeclinePct = 1.0
	RecoilDeclineSpeed = 5.0
	MaxSpread = 0.05
	RecoilSpreadIncreasePerShot = 0.0025
	RecoilSpreadDeclineSpeed = 0.2
	RecoilSpreadDecreaseDelay = 0.3
	RecoilSpreadCrosshairScaling = 3000;

	bSplashJump=false
	bRecommendSplashDamage=false
	bSniping=true
	GroupWeight=5
	AimError=600

	InventoryGroup=2

	ShotCost(0)=1
	ShotCost(1)=0
	FireInterval(0)=+0.2
	FireInterval(1)=+0.0
	ReloadTime(0) = 2.75
	ReloadTime(1) = 2.75
	
	EquipTime=0.5
//	PutDownTime=0.5
	
	Spread(0)=0.1 //0.01
	IronSightAndScopedSpread(0)= 0.0//0.0001
	MovingAndScopedAddedSpread(0)=0.005
	
	WeaponRange=30000.0
	//WeaponFireTypes(0)=EWFT_Projectile
	
	WeaponFireTypes(1)=EWFT_None
	
	WeaponFireTypes(0)=EWFT_InstantHit
	
	InstantHitDamage(0)=40 //25
	InstantHitDamage(1)=40 //25
	
	HeadShotDamageMult=2.0

	InstantHitDamageTypes(0)=class'Rx_DmgType_MarksmanRifle'
	InstantHitDamageTypes(1)=class'Rx_DmgType_MarksmanRifle'

	InstantHitMomentum(0)=20000
	InstantHitMomentum(1)=20000
	
	bInstantHit=true

	WeaponProjectiles(0)=class'Rx_Projectile_MarksmanRifle'

	FiringStatesArray(1)=Active


	ClipSize = 8 //8
	InitalNumClips = 12
	MaxClips = 12
	
	//==========================================
	// IRON SIGHT PROPERTIES
	//==========================================
	
	// IronSight:
	bIronSightCapable = false	
	IronSightViewOffset=(X=1,Y=-7.7925,Z=0.75)		// (X=-15.0,Y=-11.675,Z=0.27)
	IronSightFireOffset=(X=10,Y=0,Z=-2)
	IronSightBobDamping=80
	IronSightPostAnimDurationModifier=0.2
	// This sets how much we want to zoom in, this is a value to be subtracted because smaller FOV values are greater levels of zoom
	ZoomedFOVSub=85.0 
	// New lower speed movement values for use while zoom aiming
	ZoomGroundSpeed=160.0
	ZoomAirSpeed=340.0
	ZoomWaterSpeed=11
	
	// IronSight additional vars to the vars in AimingWeaponClass (1 means unchanged, higher values mean more dmaping):
	IronSightMinRecoilDamping = 5					// 2		1.5
	IronSightMaxRecoilDamping = 5					// 2		1.5
	IronSightMaxTotalRecoilDamping = 2				// 2		1.5
	IronSightRecoilYawDamping = 2					// 1		1.0
	IronSightMaxSpreadDamping = 2					// 2		1.5
	IronSightSpreadIncreasePerShotDamping = 100		// 4		1.7

	/** one1: Added. */
	BackWeaponAttachmentClass = class'Rx_BackWeaponAttachment_MarksmanRifle'
	
	/*******************/
	/*Veterancy*/
	/******************/
	
	Vet_DamageModifier(0)=1  //Applied to instant-hits only
	Vet_DamageModifier(1)=1.10 
	Vet_DamageModifier(2)=1.25 
	Vet_DamageModifier(3)=1.50 
	
	Vet_ROFModifier(0) = 1
	Vet_ROFModifier(1) = 1 
	Vet_ROFModifier(2) = 1  
	Vet_ROFModifier(3) = 1  
	
	Vet_ClipSizeModifier(0)=0 //Normal (should be 1)	
	Vet_ClipSizeModifier(1)=0 //Veteran 
	Vet_ClipSizeModifier(2)=2 //Elite
	Vet_ClipSizeModifier(3)=4 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.95 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.9 //Elite
	Vet_ReloadSpeedModifier(3)=0.85 //Heroic
	/**********************/
	//This may or may not work right now
	bLocSync = true; 
	LocSyncIncrement = 4; 
	ROFTurnover = 4;

    ZoomRecoilMaxIntensity = 0.05
    ZoomRecoilRecoveryRate = 20
    ZoomRecoilRate = 90
}