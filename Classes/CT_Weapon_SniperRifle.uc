class CT_Weapon_SniperRifle extends Rx_Weapon_SniperRifle;

DefaultProperties
{


	AttachmentClass=class'Rx_Attachment_SniperRifle'

	ArmsAnimSet=AnimSet'RX_WP_SniperRifle.Anims.AS_DSR50_Arms'

	//-------------- Recoil
	RecoilDelay = 0.02
	MinRecoil = 200.0
	MaxRecoil = 300.0
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
	
	bInstantHit=true
	bSplashJump=false
	bRecommendSplashDamage=false
	bSniping=true
	GroupWeight=1
	AimError=600

	InventoryGroup=2

	ShotCost(0)=1
	ShotCost(1)=1
	FireInterval(0)=+1.0
	FireInterval(1)=+0.0
	ReloadTime(0) = 4.0
	ReloadTime(1) = 4.0
	
	EquipTime=0.75
//	PutDownTime=0.5
	
	Spread(0)=0.15 //0.1 //0.0
	IronSightAndScopedSpread(0)= 0.0
	MovingAndScopedAddedSpread(0)=0.01
	
	InstantHitDamage(0)=100
	InstantHitDamage(1)=0
	InstantHitMomentum(0)=10000.0
	
	HeadShotDamageMult=3.5 //3.25 //3.0

//	BotDamagePercentage = 0.4;

	WeaponFireTypes(0)=EWFT_InstantHit

	FiringStatesArray(1)=Active

	InstantHitDamageTypes(0)=class'Rx_DmgType_SniperRifle'
	InstantHitDamageTypes(1)=None

	ClipSize = 4
	InitalNumClips = 9
	MaxClips = 9
	
	bAutoFire = false
	BoltActionReload=true
	BoltReloadTime(0) = 1.75 //2.0f (Factor in RefireBoltReloadInterrupt) 
	BoltReloadTime(1) = 1.75 //2.0f

	// Configure the zoom

	bZoomedFireMode(0)=0
	bZoomedFireMode(1)=1

	FadeTime=0.3

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
	Vet_ClipSizeModifier(3)=2 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.95 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.9 //Elite
	Vet_ReloadSpeedModifier(3)=0.85 //Heroic
	/**********************/
	
	bLocSync = true; 
	ROFTurnover = 2;

	IronSightViewOffset=(X=-5,Y=-6.45,Z=0.84)
}