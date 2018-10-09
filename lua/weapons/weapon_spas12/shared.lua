/*=====================================*\
		Spas 12 - 1/29/2016
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Spas 12"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	
	SWEP.IconLetter			= "0"
	SWEP.IconFont			= "HLKillIcons"
	SWEP.SelectIconLetter	= "b"
	SWEP.SelectIconFont		= "HLSelectIcons"
	
	killicon.AddFont( "weapon_spas12", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_shotgun"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "shotgun"
SWEP.ViewModel				= "models/weapons/c_shotgun.mdl"
SWEP.WorldModel				= "models/weapons/w_shotgun.mdl"
SWEP.Weight					= 6

SWEP.ReloadSound			= Sound( "weapons/shotgun/shotgun_reload" .. math.random( 1, 3 ) .. ".wav" ) -- Need to find a way to select multiple sounds
							-- Make a list 1-3 of sounds?
SWEP.Primary.ChamberSound	= Sound( "weapons/shotgun/shotgun_cock.wav" )

SWEP.Primary.Sound			= Sound( "Weapon_Shotgun.Single" )
SWEP.Primary.Recoil			= 4
SWEP.Primary.Damage			= 9
SWEP.Primary.NumShots		= 8
SWEP.Primary.Cone			= 0.099
SWEP.Primary.ClipSize		= 6
SWEP.Primary.Delay			= 0.5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "buckshot"
SWEP.Primary.Chambered		= not true -- Show players they need to pump it with R 	


SWEP.IronSightsPos = Vector (-8.9786, -12.7623, 4.3214)
SWEP.IronSightsAng = Vector (-0.5638, -0.0598, -0.8275)
/*
SWEP.IronSightsPos = Vector(-7.68, 0, 3.44)
SWEP.IronSightsAng = Vector(0.1, -0.036, 0)

SWEP.IronSightsPos = Vector (-8.9786, -12.7623, 4.3214)
SWEP.IronSightsAng = Vector (-0.5638, -0.0598, -0.8275)
*/

SWEP.Chambers				= true
SWEP.ShotgunFunction		= true
SWEP.DoubleShot				= true
SWEP.ForceModifier			= 5

SWEP.Primary.Chamber		= ACT_SHOTGUN_PUMP
SWEP.Secondary.ShootAnim	= ACT_VM_SECONDARYATTACK 

