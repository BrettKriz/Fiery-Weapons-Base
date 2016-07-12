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
	SWEP.IconLetter			= "k"
	SWEP.WepSelectLetter	= "k"
	SWEP.WepFolderPath		= "weapon_spas12"
	
	killicon.AddFont( SWEP.WepFolderPath, SWEP.WepSelectFont, SWEP.IconLetter, SWEP.IconColor )
	
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
SWEP.Primary.Chambered		= !true -- Show players they need to pump it

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

SWEP.Primary.Chamber		= ACT_SHOTGUN_PUMP
