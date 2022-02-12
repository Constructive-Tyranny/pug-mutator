// We extend the PurchaseSystem because this is the only way. You can only extend this class.

class CT_PurchaseSystem extends Rx_PurchaseSystem;

simulated function UpdateMapSpecificInfantryClasses()	// Function provided by Handepsilon! Ty!
{
	local Rx_MapInfo MI; 
	local int i; 
	
	MI = Rx_MapInfo(WorldInfo.GetMapInfo());

	if(MI == none)
		return; 
	else
	{
		//Update GDI Infantry based on map info 
		for(i=0; i<MI.GDIInfantryArray.Length; i++) // In a nutshell, we loop around the purchase terminal, check if the old classes aren't there. And if they are. Change them.
		{
			if(class<Rx_FamilyInfo_GDI_Mobius>(GDIInfantryClasses[i]) != None)
				MI.GDIInfantryArray[i] = class'CT_FamilyInfo_GDI_Mobius';
			GDIInfantryClasses[i] = MI.GDIInfantryArray[i];
			if(class<Rx_FamilyInfo_GDI_Marksman>(GDIInfantryClasses[i]) != None)
				MI.GDIInfantryArray[i] = class'CT_FamilyInfo_GDI_Marksman';
			GDIInfantryClasses[i] = MI.GDIInfantryArray[i];
			if(class<Rx_FamilyInfo_GDI_Deadeye>(GDIInfantryClasses[i]) != None)
				MI.GDIInfantryArray[i] = class'CT_FamilyInfo_GDI_Deadeye';
			GDIInfantryClasses[i] = MI.GDIInfantryArray[i];
			if(class<Rx_FamilyInfo_GDI_Havoc>(GDIInfantryClasses[i]) != None)
				MI.GDIInfantryArray[i] = class'CT_FamilyInfo_GDI_Havoc';
			GDIInfantryClasses[i] = MI.GDIInfantryArray[i];
			
		}
		//Update Nod Infantry based on map info 
		for(i=0; i<MI.NodInfantryArray.Length; i++)
		{
			if(class<Rx_FamilyInfo_Nod_StealthBlackHand>(NodInfantryClasses[i]) != None)
				MI.NodInfantryArray[i] = class'CT_FamilyInfo_Nod_StealthBlackHand';
			NodInfantryClasses[i] = MI.NodInfantryArray[i];
			if(class<Rx_FamilyInfo_Nod_Marksman>(NodInfantryClasses[i]) != None)
				MI.NodInfantryArray[i] = class'CT_FamilyInfo_Nod_Marksman';
			NodInfantryClasses[i] = MI.NodInfantryArray[i];
			if(class<Rx_FamilyInfo_Nod_BlackHandSniper>(NodInfantryClasses[i]) != None)
				MI.NodInfantryArray[i] = class'CT_FamilyInfo_Nod_BlackHandSniper';
			NodInfantryClasses[i] = MI.NodInfantryArray[i];
			if(class<Rx_FamilyInfo_Nod_Sakura>(NodInfantryClasses[i]) != None)
				MI.NodInfantryArray[i] = class'CT_FamilyInfo_Nod_Sakura';
			NodInfantryClasses[i] = MI.NodInfantryArray[i];
		}
		//Update Nod Vehicles based on map info.
		for(i=0; i<MI.NodVehicleArray.Length; i++)
		{
			if(class<Rx_Vehicle_Nod_Apache_PTInfo>(NodVehicleClasses[i]) != None)
				MI.NodVehicleArray[i] = class'CT_Vehicle_Nod_Apache_PTInfo';

			NodVehicleClasses[i] = MI.NodVehicleArray[i];
		}
	}	
}

DefaultProperties 
{
	GDIInfantryClasses[0]  = class'Rx_FamilyInfo_GDI_Soldier'	
	GDIInfantryClasses[1]  = class'Rx_FamilyInfo_GDI_Shotgunner'
	GDIInfantryClasses[2]  = class'Rx_FamilyInfo_GDI_Grenadier'
	GDIInfantryClasses[3]  = class'CT_FamilyInfo_GDI_Marksman' // CT Balanced version.
	GDIInfantryClasses[4]  = class'Rx_FamilyInfo_GDI_Engineer'
	GDIInfantryClasses[5]  = class'Rx_FamilyInfo_GDI_Officer'
	GDIInfantryClasses[6]  = class'Rx_FamilyInfo_GDI_RocketSoldier'
	GDIInfantryClasses[7]  = class'Rx_FamilyInfo_GDI_McFarland'
	GDIInfantryClasses[8]  = class'CT_FamilyInfo_GDI_Deadeye' // CT Balanced version.
	GDIInfantryClasses[9]  = class'Rx_FamilyInfo_GDI_Gunner'
	GDIInfantryClasses[10] = class'Rx_FamilyInfo_GDI_Patch'
	GDIInfantryClasses[11] = class'CT_FamilyInfo_GDI_Havoc' // CT Balanced version.
	GDIInfantryClasses[12] = class'Rx_FamilyInfo_GDI_Sydney'
	GDIInfantryClasses[13] = class'CT_FamilyInfo_GDI_Mobius' // CT Balanced version.
	GDIInfantryClasses[14] = class'Rx_FamilyInfo_GDI_Hotwire'

	GDIVehicleClasses[0]   = class'RenX_Game.Rx_Vehicle_GDI_Humvee_PTInfo'
	GDIVehicleClasses[1]   = class'RenX_Game.Rx_Vehicle_GDI_APC_PTInfo'
	GDIVehicleClasses[2]   = class'RenX_Game.Rx_Vehicle_GDI_MRLS_PTInfo'
	GDIVehicleClasses[3]   = class'RenX_Game.Rx_Vehicle_GDI_MediumTank_PTInfo'
	GDIVehicleClasses[4]   = class'RenX_Game.Rx_Vehicle_GDI_MammothTank_PTInfo'
	GDIVehicleClasses[5]   = None
	GDIVehicleClasses[6]   = class'RenX_Game.Rx_Vehicle_GDI_Chinook_PTInfo'
	GDIVehicleClasses[7]   = class'RenX_Game.Rx_Vehicle_GDI_Orca_PTInfo'

	GDIItemClasses[0]  = class'Rx_Weapon_IonCannonBeacon'
	GDIItemClasses[1]  = class'Rx_Weapon_Airstrike_GDI'
	GDIItemClasses[2]  = class'Rx_Weapon_RepairTool'

	NodInfantryClasses[0]  = class'Rx_FamilyInfo_Nod_Soldier'
	NodInfantryClasses[1]  = class'Rx_FamilyInfo_Nod_Shotgunner'
	NodInfantryClasses[2]  = class'Rx_FamilyInfo_Nod_FlameTrooper'
	NodInfantryClasses[3]  = class'CT_FamilyInfo_Nod_Marksman' // CT Balanced version.
	NodInfantryClasses[4]  = class'Rx_FamilyInfo_Nod_Engineer'
	NodInfantryClasses[5]  = class'Rx_FamilyInfo_Nod_Officer'
	NodInfantryClasses[6]  = class'Rx_FamilyInfo_Nod_RocketSoldier'	
	NodInfantryClasses[7]  = class'Rx_FamilyInfo_Nod_ChemicalTrooper'
	NodInfantryClasses[8]  = class'CT_FamilyInfo_Nod_BlackHandSniper' // CT Balanced version.
	NodInfantryClasses[9]  = class'CT_FamilyInfo_Nod_StealthBlackHand' // CT Balanced version.
	NodInfantryClasses[10] = class'Rx_FamilyInfo_Nod_LaserChainGunner'
	NodInfantryClasses[11] = class'CT_FamilyInfo_Nod_Sakura' // CT Balanced version.		
	NodInfantryClasses[12] = class'Rx_FamilyInfo_Nod_Raveshaw'
	NodInfantryClasses[13] = class'Rx_FamilyInfo_Nod_Mendoza'
	NodInfantryClasses[14] = class'Rx_FamilyInfo_Nod_Technician'
	
	NodVehicleClasses[0]   = class'RenX_Game.Rx_Vehicle_Nod_Buggy_PTInfo'
	NodVehicleClasses[1]   = class'RenX_Game.Rx_Vehicle_Nod_APC_PTInfo'
	NodVehicleClasses[2]   = class'RenX_Game.Rx_Vehicle_Nod_Artillery_PTInfo'
	NodVehicleClasses[3]   = class'RenX_Game.Rx_Vehicle_Nod_FlameTank_PTInfo'
	NodVehicleClasses[4]   = class'RenX_Game.Rx_Vehicle_Nod_LightTank_PTInfo'
	NodVehicleClasses[5]   = class'RenX_Game.Rx_Vehicle_Nod_StealthTank_PTInfo'
	NodVehicleClasses[6]   = class'RenX_Game.Rx_Vehicle_Nod_Chinook_PTInfo'
	NodVehicleClasses[7]   = class'CT_Vehicle_Nod_Apache_PTInfo' // CT Balanced version.

	NodItemClasses[0]  = class'Rx_Weapon_NukeBeacon'
	NodItemClasses[1]  = class'Rx_Weapon_Airstrike_Nod'
	NodItemClasses[2]  = class'Rx_Weapon_RepairTool'
}
