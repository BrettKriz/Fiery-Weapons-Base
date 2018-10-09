/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Mac 10 .45"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 4
	
	SWEP.IconLetter			= "l"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "L"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_mac10", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_mac10.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_mac10.mdl"

SWEP.HoldType				= "smg"
SWEP.HoldType2				= "autopistol"
SWEP.ReloadHoldType			= "smg"
SWEP.Weight					= 3

SWEP.Primary.Sound			= Sound( "Weapon_mac10.Single" )
SWEP.Primary.Recoil			= 1.2
SWEP.Primary.Damage			= 24
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.038
SWEP.Primary.ClipSize		= 35
SWEP.Primary.Delay			= 0.062
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "357"

SWEP.IronSightsPos = Vector(-10.10, -4.20, 1.5)
SWEP.IronSightsAng = Vector(1.25, -5.5, -6.5)

