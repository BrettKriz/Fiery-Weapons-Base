/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "MP5"			
	SWEP.Author				= "Counter-Strike"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "x"
	SWEP.WepSelectLetter	= "x"
	
	killicon.AddFont( "weapon_mp5", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "grip"
SWEP.HoldType2				= "hipfire2"
SWEP.ReloadHoldType			= "rifle"

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_mp5.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_mp5.mdl"
SWEP.Mag					= "models/weapons/w_smg_mp7_mag.mdl"
SWEP.Weight					= 5

SWEP.Primary.Sound			= Sound( "Weapon_MP5Navy.Single" )
SWEP.Primary.Recoil			= 0.25
SWEP.Primary.Damage			= 20
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.035
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.08
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "smg1"

SWEP.IronSightsPos = Vector(-5.361, -2, 1.639)
SWEP.IronSightsAng = Vector(1.7, -0.06, 0)