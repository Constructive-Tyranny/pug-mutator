// We "extend" the inventory of vanilla Mobius because we only want to change one thing.

class CT_InventoryManager_GDI_Mobius extends Rx_InventoryManager_GDI_Mobius;

DefaultProperties
{
	PrimaryWeapons[0] = class'CT_Weapon_VoltAutoRifle_GDI' // We point this to the weapon we want to use now.
}
