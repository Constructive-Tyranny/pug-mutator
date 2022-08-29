class CT_Mutator_Index extends Rx_Mutator;

// simulated function Tick(float DeltaTime)
// {
// 	if ( SystemMutator != None )
// 		SystemMutator.OnTick(DeltaTime);
// }

function OnMatchStart()
{
	`log( "############# MATCH HAS STARTED IN CT CODE #############" );
	class'CT_UtilitiesX'.static.SendMessageToAllPlayers("Welcome to Constructive Tyranny.\nThis is a modified server with some changes to the game!\nEnjoy your stay!", 400);
}

// I seriously need to throw this into its own file.
function bool CheckReplacement(Actor Other)
{
	// Replacement Hell!
	if (Other.IsA('Rx_InventoryManager_GDI_Havoc'))
	{
		Rx_InventoryManager_GDI_Havoc(Other).PrimaryWeapons[0] = class'CT_Weapon_RamjetRifle';
	}	
	if (Other.IsA('Rx_InventoryManager_GDI_Deadeye'))
	{
		Rx_InventoryManager_GDI_Deadeye(Other).PrimaryWeapons[0] = class'CT_Weapon_SniperRifle_GDI';
	}
	if (Other.IsA('Rx_InventoryManager_GDI_Marksman'))
	{
		Rx_InventoryManager_GDI_Marksman(Other).PrimaryWeapons[0] = class'CT_Weapon_MarksmanRifle_GDI';
	}	
	if (Other.IsA('Rx_InventoryManager_GDI_Mobius'))
	{
		Rx_InventoryManager_GDI_Mobius(Other).PrimaryWeapons[0] = class'CT_Weapon_VoltAutoRifle_GDI';
	}	
	if (Other.IsA('Rx_InventoryManager_Nod_Sakura'))
	{
		Rx_InventoryManager_Nod_Sakura(Other).PrimaryWeapons[0] = class'CT_Weapon_RamjetRifle';
	}
	if (Other.IsA('Rx_InventoryManager_Nod_BlackHandSniper'))
	{
		Rx_InventoryManager_Nod_BlackHandSniper(Other).PrimaryWeapons[0] = class'CT_Weapon_SniperRifle_Nod';
	}
	if (Other.IsA('Rx_InventoryManager_Nod_Marksman'))
	{
		Rx_InventoryManager_Nod_Marksman(Other).PrimaryWeapons[0] = class'CT_Weapon_MarksmanRifle_Nod';
	}
	if (Other.IsA('Rx_InventoryManager_Nod_StealthBlackHand'))
	{
		Rx_InventoryManager_Nod_StealthBlackHand(Other).PrimaryWeapons[0] = class'CT_Weapon_LaserRifle';
	}
	if (Other.IsA('Rx_Vehicle_Apache') && !Other.IsA('CT_Vehicle_Apache'))
	{
		ReplaceWith(Other, "CT_Vehicle_Apache");
		//return false;
	}
	return true;
}

defaultproperties
{
   Name="CT_Mutator_Index"
   ObjectArchetype=UTMutator'utgame.Default__UTMutator'
}
