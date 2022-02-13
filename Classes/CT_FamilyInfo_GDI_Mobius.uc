// We "extend" vanilla Mobius to change its inventory.

class CT_FamilyInfo_GDI_Mobius extends Rx_FamilyInfo_GDI_Mobius;

DefaultProperties
{
	InvManagerClass = class'CT_InventoryManager_GDI_Mobius'
}

