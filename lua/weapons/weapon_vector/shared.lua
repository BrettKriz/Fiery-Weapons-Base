/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Vector Kriss .45"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "m"
	SWEP.WepSelectLetter	= "m"
	
	killicon.AddFont( "weapon_vector", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "grip"
SWEP.HoldType2				= "hipfire2"
SWEP.ReloadHoldType			= "rifle"

SWEP.ViewModel				= "models/weapons/v_vectorsmg.mdl"
SWEP.ViewModelFlip			= true
SWEP.WorldModel				= "models/weapons/w_vectorsmg.mdl"
SWEP.Mag					= "models/weapons/w_smg_mp9_mag.mdl"
SWEP.Weight					= 6

SWEP.Primary.Sound			= Sound( "weapons/vector/fire.wav" )
SWEP.Primary.Recoil			= 0.2
SWEP.Primary.Damage			= 23
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.038
SWEP.Primary.ClipSize		= 40
SWEP.Primary.Delay			= 0.082
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "357"

SWEP.IronSightsPos = Vector(2.5, -1, 1.179)
SWEP.IronSightsAng = Vector(0, 0, 0)