// We "extend" the inventory of vanilla SBH so we can adjust his loadout.

class CT_InventoryManager_Nod_StealthBlackHand extends Rx_InventoryManager_Nod_StealthBlackHand;

DefaultProperties
{
    PrimaryWeapons(0)=class'CT_Weapon_LaserRifle' // This is the weapon we change.
    SidearmWeapons(0)=class'Rx_Weapon_SMG_Silenced_Nod'
    AvailableSidearmWeapons(0)=class'Rx_Weapon_SMG_Silenced_Nod'
}

