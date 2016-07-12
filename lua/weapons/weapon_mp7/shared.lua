// Coded by Nova Prospekt
// MP7

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "MP7 4.6"			
	SWEP.Author				= "Nova Prospekt"
	
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "x"
	SWEP.WepSelectLetter	= "x"
	SWEP.WepSelectFont		= "hl2mp"
	SWEP.WepFolderPath		= "weapon_firey_mp7"
	
	killicon.AddFont( SWEP.WepFolderPath, SWEP.WepSelectFont, SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category				= "Fiery"
SWEP.HL2WeaponDraw 			= true

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "smg"
SWEP.ViewModel				= "models/weapons/c_smg1.mdl"
SWEP.WorldModel				= "models/weapons/w_smg1.mdl"
SWEP.Weight					= 4.5

SWEP.ReloadSound			= Sound( "Weapon_SMG1.Reload" )
SWEP.Primary.Sound			= Sound( "Weapon_SMG1.Single" )
SWEP.Primary.Recoil			= 0.86
SWEP.Primary.Damage			= 30
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.012
SWEP.Primary.ClipSize		= 32
SWEP.Primary.Delay			= 0.063
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "smg1"

SWEP.Secondary.Sound		= "weapons/grenade_launcher1.wav" -- Because grenade launching uses this ;D
SWEP.Secondary.Recoil		= 4 
SWEP.Secondary.Damage		= 0
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.03

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.Clips		= 3
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "SMG1_Grenade"
SWEP.Launcher				= true
/*
local mods = self.Silencer 
				or self.FireModes
				or self.Bipod 
				or (self.Melee and (self.Primary.ClipSize > 0)) 
				or self.Launcher 
				or self.DoubleShot

*/
SWEP.FireModes		= nil --{false}
SWEP.Bipod			= nil --{false}
SWEP.Melee			= false

SWEP.DoubleShot		= false

SWEP.IronSightsPos = Vector(-6.441, -3.5, 1.039)
SWEP.IronSightsAng = Vector(0, 0, 0)
