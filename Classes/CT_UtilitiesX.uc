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