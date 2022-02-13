class CT_Weapon_RamjetRifle extends Rx_Weapon_RamjetRifle;

defaultproperties
{
	
	//-------------- Recoil
	RecoilDelay = 0.05
	MinRecoil = 300.0
	MaxRecoil = 400.0
	MaxTotalRecoil = 5000.0
	RecoilYawModifier = 0.5 // will be a random value between 0 and this value for every shot
	RecoilInterpSpeed = 40.0
	RecoilDeclinePct = 0.8
	RecoilDeclineSpeed = 5.0
	MaxSpread = 0.12
	RecoilSpreadIncreasePerShot = 0.0
	RecoilSpreadDeclineSpeed = 0.1
	RecoilSpreadDecreaseDelay = 0.3
	RecoilSpreadCrosshairScaling = 4000;	// 2500

    bAutoFire = false
	bInstantHit=true
	bSplashJump=false
	bRecommendSplashDamage=false
	bSniping=true
	GroupWeight=1
	AimError=600

    InventoryGroup=2

    ShotCost(0)=1
    ShotCost(1)=0
    FireInterval(0)=+1.0
    FireInterval(1)=+1.0
    
    EquipTime=1.0
//	PutDownTime=0.75
    
    Spread(0)=0.15 //0.08 //0.0
	IronSightAndScopedSpread(0)= 0.0
	MovingAndScopedAddedSpread(0)=0.01

 
	WeaponFireTypes(0)=EWFT_InstantHit
//    WeaponFireTypes(0)=EWFT_Projectile
    
	InstantHitDamageTypes(0)=class'Rx_DmgType_RamjetRifle'
	InstantHitDamage(0)=180
	InstantHitMomentum(0)=10000.0
    
//    WeaponProjectiles(0)=class'Rx_Projectile_RamjetRifle'

    FiringStatesArray(1)=Active


    ClipSize = 4
    InitalNumClips = 9
    MaxClips = 9
    
    PerBulletReload = true

    bZoomedFireMode(0)=0
    bZoomedFireMode(1)=1
    
	CrosshairWidth = 256
	CrosshairHeight = 256
	
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
	Vet_ClipSizeModifier(2)=1 //Elite
	Vet_ClipSizeModifier(3)=1 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.95 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.9 //Elite
	Vet_ReloadSpeedModifier(3)=0.85 //Heroic
	/**********************/
	
	bLocSync = true; 
	ROFTurnover = 2;
	
	//Bolt Stuff
	BoltActionReload=true
	BoltReloadTime(0) = 1.75 //2.0f (Factor in RefireBoltReloadInterrupt) 
	BoltReloadTime(1) = 1.75 //2.0f
	
	//For instant hit weapons 
	bPierceInfantry = true
	bPierceVehicles = false
	MaximumPiercingAbility  = 32
	CurrentPiercingPower	= 32

    ZoomRecoilMaxIntensity = 0.45
    ZoomRecoilRecoveryRate = 5
    ZoomRecoilRate = 90
}