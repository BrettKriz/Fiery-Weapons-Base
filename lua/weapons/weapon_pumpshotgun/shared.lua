/*=====================================*\
		Legacy ~ Pump Shotgun
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Pump Shotgun"			
	SWEP.Author				= "Counter-Strike"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.Note				= "It looks beat up and modified.."
	
	SWEP.IconLetter			= "k"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "K"
	-- SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_pumpshotgun", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base				= "weapon_fiery_base_shotgun"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType			= "rifle"
SWEP.HoldType2			= "hipfire1"
SWEP.ViewModel			= "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel			= "models/weapons/w_shot_m3super90.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_M3.Single" )
SWEP.Primary.Recoil			= 4.85
SWEP.Primary.Damage			= 8
SWEP.Primary.NumShots		= 7
SWEP.Primary.Cone			= 0.1
SWEP.Primary.ClipSize		= 6
SWEP.Primary.Delay			= 0.97
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "buckshot"

SWEP.IronSightsPos = Vector(-7.68, 0, 3.44)
SWEP.IronSightsAng = Vector(0.1, -0.036, 0)


