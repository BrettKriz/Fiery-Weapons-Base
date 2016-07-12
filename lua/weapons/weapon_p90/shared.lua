/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "P90 5.7" -- 5.7			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "m"
	SWEP.WepSelectLetter	= "m"
	SWEP.WepFolderPath		= "weapon_p90"
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "grip"
SWEP.HoldType2				= "hipfire2"
SWEP.ReloadHoldType			= "smg"

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_p90.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_p90.mdl"
SWEP.Weight					= 6

SWEP.Primary.Sound			= Sound( "Weapon_p90.Single" )
SWEP.Primary.Recoil			= 0.78
SWEP.Primary.Damage			= 26
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.044
SWEP.Primary.ClipSize		= 50
SWEP.Primary.Delay			= 0.088
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "smg1"

SWEP.IronSightsPos = Vector(-5.6, -5, 1.759)
SWEP.IronSightsAng = Vector(0.3, 0.3, 0)