class CT_InventoryManager_GDI_Deadeye extends Rx_InventoryManager_GDI_Deadeye;

DefaultProperties
{
	PrimaryWeapons[0] = class'CT_Weapon_SniperRifle_GDI' //2
	//PrimaryWeapons[1] = class'Rx_Weapon_SmokeGrenade_Rechargeable' //5
	
	SidearmWeapons[0] = class'Rx_Weapon_SMG_GDI' //class'Rx_Weapon_HeavyPistol' //1
	
	AvailableSidearmWeapons(0) = class'Rx_Weapon_SMG_GDI' //class'Rx_Weapon_HeavyPistol' //1
	
	AvailableAbilityWeapons(0) = class'Rx_WeaponAbility_SmokeGrenade' 
}
