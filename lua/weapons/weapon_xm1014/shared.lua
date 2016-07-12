/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "XM1014"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "B"
	
	killicon.AddFont( "weapon_xm1014", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_shotgun"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true


SWEP.HoldType2				= "autoshotgun"
SWEP.ViewModel				= "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel				= "models/weapons/w_shot_xm1014.mdl"
SWEP.Weight					= 8

SWEP.Primary.Sound			= Sound( "Weapon_xm1014.Single" )
SWEP.Primary.Recoil			= 4
SWEP.Primary.Damage			= 9
SWEP.Primary.NumShots		= 7
SWEP.Primary.Cone			= 0.15
SWEP.Primary.ClipSize		= 7
SWEP.Primary.Delay			= 0.25
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "buckshot"
SWEP.ShotgunFunctions		= true

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-7, -1, 2.68)
SWEP.IronSightsAng = Vector(-0.101, -0.796, 0)