// We extend the vanilla LaserRifle because we only change *some* the balance on it.
// File could be less filled, but this allows for changing more values without bothering with two files. Does prevent balancing from TA in these values though.


class CT_Weapon_LaserRifle extends Rx_Weapon_LaserRifle;

DefaultProperties
{
	
	//-------------- Recoil
	RecoilDelay = 0.02
	MinRecoil = 35.0
	MaxRecoil = 40.0
	MaxTotalRecoil = 2000.0
	RecoilYawModifier = 0.5 // will be a random value between 0 and this value for every shot
	RecoilInterpSpeed = 20.0
	RecoilDeclinePct = 0.5
	RecoilDeclineSpeed = 5.0
	MaxSpread = 0.03
	RecoilSpreadIncreasePerShot = 0.0010
	RecoilSpreadDeclineSpeed = 0.1
	RecoilSpreadDecreaseDelay = 0.45
	RecoilSpreadCrosshairScaling = 1000;
	
	CrosshairWidth = 195
	CrosshairHeight = 195

    ShotCost(0)=1
    ShotCost(1)=0
	
	bBurstFire = true 
	TimeBetweenBursts=0.06f
	bConstantFire = true
	Burst_Cooldown(0) = 0.3
	Burst_Cooldown(1) = 0.3
	

    FireInterval(0)=+0.5f
    FireInterval(1)=+0.5f
	
    ReloadTime(0) = 3.667
    ReloadTime(1) = 3.667
    
    EquipTime=0.75
//	PutDownTime=0.5
    
    WeaponRange=3900.0 // CT Balance: Was 6k, now 3.9k so it doesn't have double the Mobius range.

    InstantHitDamage(0)=20 //22 //15
    InstantHitDamage(1)=0
	
	HeadShotDamageMult=1.5 //1.4 //2.0
   

    InstantHitDamageTypes(0)=class'Rx_DmgType_LaserRifle'
    InstantHitDamageTypes(1)=None

    InstantHitMomentum(0)=10000
    InstantHitMomentum(1)=0

    Spread(0)=0.002
    Spread(1)=0.0
 
    ClipSize = 30
    InitalNumClips = 7
    MaxClips = 7
	bHasInfiniteAmmo=true
	
	/*******************/
	/*Veterancy*/
	/******************/
	
	Vet_DamageModifier(0)=1  //Applied to instant-hits only
	Vet_DamageModifier(1)=1.10 
	Vet_DamageModifier(2)=1.25 
	Vet_DamageModifier(3)=1.50 
	
	Vet_ClipSizeModifier(0)=0 //Normal (should be 1)	
	Vet_ClipSizeModifier(1)=6 //Veteran 
	Vet_ClipSizeModifier(2)=12 //Elite
	Vet_ClipSizeModifier(3)=18 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.95 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.9 //Elite
	Vet_ReloadSpeedModifier(3)=0.85 //Heroic
	/**********************/
	
	bLocSync = true; 
	LocSyncIncrement = 12; 
}
