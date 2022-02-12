

class CT_Sys_Mutator extends Rx_Mutator;

var float ourServerFPS;
var CT_Mut_Controller CTController;
var int calcServerFPS;

function OnTick(float DeltaTime)
{
	// Keep server FPS here as well for Log file logging.
	ourServerFPS = 1 / DeltaTime;
	calcServerFPS++;
	
	if ( CTController != None ) 
		CTController.OnTick(DeltaTime);
}

function InitSystem()
{
	ourServerFPS = 0;
	
	if(`WorldInfoObject.NetMode == NM_DedicatedServer)
	{
		`log("[CT-System-Mutator] Server Found - Starting FPS Timer");
		setTimer(10, true, 'PrintourServerFPS');
	} else {
		`log("[CT-System-Mutator] Client Found, not logging FPS");
	}
	
	if ( Rx_Game(WorldInfo.Game) != None )
	{
		CTController = Rx_Game(WorldInfo.Game).Spawn(class'CT_Mut_Controller');
		
		`log("[CT-SYSTEM] Spawned Controller and Replication Info classes");
	}
}

function PrintourServerFPS()
{
	`log("[CT-System-Mutator] Server FPS: " $ ourServerFPS $ " Calc Server FPS: " $ string((calcServerFPS/10)));	
	calcServerFPS = 0;
}

