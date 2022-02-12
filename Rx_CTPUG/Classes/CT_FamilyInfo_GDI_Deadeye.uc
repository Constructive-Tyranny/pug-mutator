class CT_FamilyInfo_GDI_Deadeye extends Rx_FamilyInfo_GDI_Deadeye;

DefaultProperties
{
	FamilyID="GDI"
	Faction="GDI"

	//DamagePointsMultiplier  = 0.1f
    HealPointsMultiplier    = 0.02f
    PointsForKill           = 22.5f //30
	MaxHealth               = 100
	MaxArmor               	= 150
	Armor_Type 				= A_None
	SpeedMultiplier			= 0.9

	/*PT Block Info*/
	/*------------*/
	bHighTier			= true
	bIsSniper			= true
	BasePurchaseCost	= 500
	PT_Damage			= 5
	PT_Range			= 6
	PT_RateOfFire		= 1
	PT_MagazineCapacity = 2
	PT_Icon				= Texture2D'RenXPurchaseMenu.T_Icon_Weapon_SniperRifle'
	
	/*---------------*/
	

	InvManagerClass = class'CT_InventoryManager_GDI_Deadeye'

	/***********/
	/*Veterancy*/
	/***********/
	
	VPCost(0) = 20
	VPCost(1) = 40
	VPCost(2) = 80
	
	VPReward(0)=4
	VPReward(1)=5
	VPReward(2)=7
	VPReward(3)=10
	
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

	PowerUpClasses.Add(class'Rx_Pickup_HealthMedium');
	PowerUpClasses.Add(class'Rx_Pickup_ArmourMedium');

	PTString="Buy Char - Sniper"
}
