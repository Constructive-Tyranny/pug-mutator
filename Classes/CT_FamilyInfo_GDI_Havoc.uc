class CT_FamilyInfo_GDI_Havoc extends Rx_FamilyInfo_GDI_Havoc;

DefaultProperties
{
	FamilyID="GDI"
	Faction="GDI"

	//DamagePointsMultiplier  = 0.142857f
	HealPointsMultiplier    = 0.028571f
	PointsForKill           = 40.0f //55
	MaxHealth               = 100
	MaxArmor               	= 200
	Armor_Type 				= A_None
	SpeedMultiplier			= 0.9

	/*PT Block Info*/
	/*------------*/
	BasePurchaseCost	= 1000
	bHighTier			= true
	bIsSniper			= true
	PT_Damage			= 6
	PT_Range			= 6
	PT_RateOfFire		= 1
	PT_MagazineCapacity = 2
	PT_Icon				= Texture2D'RenXPurchaseMenu.T_Icon_Weapon_RamjetRifle'
	/*---------------*/

	InvManagerClass = class'CT_InventoryManager_GDI_Havoc'
	
	/***********/
	/*Veterancy*/
	/***********/
	
	VPCost(0) = 30
	VPCost(1) = 60
	VPCost(2) = 120
	
	VPReward(0)=5
	VPReward(1)=6
	VPReward(2)=8
	VPReward(3)=12
	
	//+X
	Vet_HealthMod(0)=0
	Vet_HealthMod(1)=25
	Vet_HealthMod(2)=50
	Vet_HealthMod(3)=75
	
	//+X
	Vet_SprintSpeedMod(0)=0
	Vet_SprintSpeedMod(1)=0.05
	Vet_SprintSpeedMod(2)=0.075
	Vet_SprintSpeedMod(3)=0.1
	
	/******************/

	PowerUpClasses.Add(class'Rx_Pickup_HealthLarge');
	PowerUpClasses.Add(class'Rx_Pickup_ArmourHeavy');
	PTString="Buy Char - Ramjet"
}
