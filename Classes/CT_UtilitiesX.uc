
class CT_UtilitiesX extends object;

static function SendMessageToAllPlayers(string message, int timeOnScreen = 120)
{
	local Controller c;
	foreach class'WorldInfo'.static.GetWorldInfo().AllControllers(class'Controller', c)
	{
		if ( c != None )
			if ( Rx_Controller(c) != none )
				Rx_Controller(c).CTextMessage("[CT System Message]\n" $ message,'LightGreen',timeOnScreen);
	}
}

static function SendMessageToOnlineAdministrators(string message)
{
	local Controller c;
	foreach class'WorldInfo'.static.GetWorldInfo().AllControllers(class'Controller', c)
	{
		if ( c != None )
			if ( Rx_Controller(c) != none && Rx_PRI(Rx_Controller(c).PlayerReplicationInfo) != None && Rx_PRI(Rx_Controller(c).PlayerReplicationInfo).bAdmin )
				Rx_Controller(c).CTextMessage("[CT] " $ message,'LightGreen',120);
	}
}

static function SendMessageToPlayersInTeam(int TeamID, string message, optional name Colorx = 'LightGreen', optional int TimeOnScreen = 120)
{
	local Controller c;

	foreach class'WorldInfo'.static.GetWorldInfo().AllControllers(class'Controller', c)
	{
		if ( c != None && c.GetTeamNum() == TeamID )
			if ( Rx_Controller(c) != none )
				Rx_Controller(c).CTextMessage("[CT] " $ message,Colorx,TimeOnScreen);
	}
}

static function DumpAllActors(PlayerController sender)
{
	local Actor thisActor;
	local int aCount;
	
	`log("-------------- STARTING DUMP -------------------");
	
	foreach class'WorldInfo'.static.GetWorldInfo().AllActors(class'Actor', thisActor)
	{
		aCount++;
		`log("[CT-Dump] " $ string(thisActor));
	}
	
	`log("----------- DUMP FINISHED " $ string(aCount) $ " actors dumped! --------------");
	
	Sender.ClientMessage("[CT-Dump] " $ string(aCount) $ " actors dumped!");
}
