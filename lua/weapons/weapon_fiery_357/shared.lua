/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= ".357 Python"			
	SWEP.Author				= "Nova Prospekt"

	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "."-- HL2MP
	SWEP.WepSelectLetter	= "e" 
	
	killicon.AddFont( "weapon_fiery_357", "HLKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )

end

SWEP.HL2WeaponDraw 			= true
SWEP.Base					= "weapon_fiery_base_revolver"
SWEP.Category				= "Fiery"

SWEP.ViewModel				= "models/weapons/c_357.mdl"
SWEP.WorldModel				= "models/weapons/w_357.mdl"
SWEP.Weight					= 7

SWEP.Primary.Sound			= Sound( "Weapon_357.Single" )
SWEP.Primary.ReloadSound	= Sound( "Weapon_357.Reload" )
SWEP.Primary.Recoil			= 2.8
SWEP.Primary.Damage			= 73
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.015
SWEP.Primary.ClipSize		= 6
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.IronSightsPos = Vector(-4.68, 0, 0.6)
SWEP.IronSightsAng = Vector(0, -0.101, 0)

SWEP.ArmOffset = Vector(4.679, -13.521, -12.761)
SWEP.ArmAngle = Vector(56.9, -9.2, 0)

SWEP.DoesIdle				= true