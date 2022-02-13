// This class merely applies the correct attachments and extends the modified VoltAutoRifle 
//we are doing it like this because it allows for a Nod & GDI Volt rifle, although only GDI's is being used.

class CT_Weapon_VoltAutoRifle_GDI extends CT_Weapon_VoltAutoRifle;

DefaultProperties
{
    AttachmentClass=class'Rx_Attachment_VoltAutoRifle_GDI'

    MuzzleFlashPSCTemplate=ParticleSystem'RX_WP_VoltAutoRifle.Effects.P_VoltRifle_MuzzleFlash_1P_Blue'
	MuzzleFlashPSCTemplate_Heroic=ParticleSystem'RX_WP_VoltAutoRifle.Effects.P_VoltRifle_MuzzleFlash_1P_Blue'
}
