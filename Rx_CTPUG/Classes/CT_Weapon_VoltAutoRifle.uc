// We extend the vanilla VoltRifle because we only change *some* the balance on it.
// File could be less filled, but this allows for changing more values without bothering with two files. Does prevent balancing from TA in these values though.

class CT_Weapon_VoltAutoRifle extends Rx_Weapon_VoltAutoRifle
    abstract;

DefaultProperties
{
	
	//-------------- Recoil
	RecoilDelay = 0.02
	MinRecoil = 40.0
	MaxRecoil = 40.0 // CT Balance: Reduce recoil to make it more manageable against stronger Nod inf.
	MaxTotalRecoil = 50.0
	RecoilYawModifier = 0.5 // will be a random value between 0 and this value for every shot
	RecoilYawMultiplier = 2.0
	RecoilInterpSpeed = 30.0
	RecoilDeclinePct = 0.5
	RecoilDeclineSpeed = 6.0
	MaxSpread = 0.2
	RecoilSpreadIncreasePerShot = 0.000145
	RecoilSpreadDeclineSpeed = 0.3
	RecoilSpreadDecreaseDelay = 0.2
	RecoilSpreadCrosshairScaling = 3500

    bInstantHit=true
    bSplashJump=false
    bRecommendSplashDamage=false
    bSniping=false
    GroupWeight=1
    AimError=600

    PlayerViewOffset=(X=6.0,Y=2.0,Z=-3.0)		// (X=-2.0,Y=2.0,Z=-2.0)

    InventoryGroup=2

    ShotCost(0)=1
    ShotCost(1)=1
	
    FireInterval(0)=0.06 //+0.065
    FireInterval(1)=0.12
    ReloadTime(0) = 3.5
    ReloadTime(1) = 3.5
    
    EquipTime=1.0
//	PutDownTime=0.7

    Spread(0)=0.015 // CT Balance: 0.021 -> 0.015
    Spread(1)=0.0
    
    WeaponRange=3000.0

    InstantHitDamage(0)=13 //14 //10
	
	HeadShotDamageMult=1.25 //1.25 //2.0
	
    InstantHitMomentum(0)=10000.0

    WeaponFireTypes(0)=EWFT_InstantHit
    WeaponFireTypes(1)=EWFT_Projectile

    FiringStatesArray(1)=WeaponOverCharge

    WeaponProjectiles(1)=class'Rx_Projectile_VoltBolt'

    InstantHitDamageTypes(0)=class'Rx_DmgType_VoltAutoRifle'

    ClipSize = 100
    InitalNumClips = 7
    MaxClips = 7
    
    FireDelayTime = 0.01
    bCharge = true

	/** one1: Added. */
	BackWeaponAttachmentClass = class'Rx_BackWeaponAttachment_VoltAutoRifle'
    
    MaxCharge=15
    AutoDischargeTime=2
    MinCharge=5
    CooldownLength=0.5f
	
	bLocSync = true; 
	LocSyncIncrement = 25; 
	
	Elite_Building_DamageMod = 1.15


    /*******************/
    /*Veterancy*/
    /******************/
    
    Vet_DamageModifier(0)=1  //Applied to instant-hits only
    Vet_DamageModifier(1)=1.05
    Vet_DamageModifier(2)=1.175 
    Vet_DamageModifier(3)=1.25 
    
    Vet_ROFModifier(0) = 1
    Vet_ROFModifier(1) = 0.9667 
    Vet_ROFModifier(2) = 0.9334  
    Vet_ROFModifier(3) = 0.9  
    
    Vet_ClipSizeModifier(0)=0 //Normal (should be 1)    
    Vet_ClipSizeModifier(1)=0 //Veteran 
    Vet_ClipSizeModifier(2)=0 //Elite
    Vet_ClipSizeModifier(3)=0 //Heroic

    Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
    Vet_ReloadSpeedModifier(1)=0.9667 //Veteran 
    Vet_ReloadSpeedModifier(2)=0.9334 //Elite
    Vet_ReloadSpeedModifier(3)=0.9 //Heroic
    /**********************/

    
}
