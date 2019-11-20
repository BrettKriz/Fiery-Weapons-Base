/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "M3 Super90"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3

	SWEP.IconLetter			= "k"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "K"
	-- SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_m3", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
end

SWEP.Base					= "weapon_fiery_base_shotgun" -- SWEP.ShotgunFunctions		= true
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel				= "models/weapons/w_shot_m3super90.mdl"
SWEP.Weight					= 8

SWEP.Primary.Sound			= Sound( "Weapon_M3.Single" )
SWEP.Primary.Recoil			= 4.25
SWEP.Primary.Damage			= 8
SWEP.Primary.NumShots		= 8
SWEP.Primary.Cone			= 0.1
SWEP.Primary.ClipSize		= 8
SWEP.Primary.Delay			= 0.95
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "buckshot"


SWEP.IronSightsPos = Vector(-7.68, 0, 3.44)
SWEP.IronSightsAng = Vector(0.1, -0.036, 0)