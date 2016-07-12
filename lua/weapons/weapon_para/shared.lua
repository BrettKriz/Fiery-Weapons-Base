/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Para LMG"			
	SWEP.Author				= "Counter-Strike \nNova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "z"
	SWEP.WepSelectLetter	= "z"
	
	killicon.AddFont( SWEP.WepSelectLetter, "CSKillIcons", SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Base					= "weapon_fiery_base_rifle"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "mg"
SWEP.ViewModel				= "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel				= "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModelFlip			= false
SWEP.Weight					= 10

SWEP.Primary.Sound			= Sound( "Weapon_m249.Single" )
SWEP.Primary.Recoil			= 1.96
SWEP.Primary.Damage			= 34
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.062
SWEP.Primary.ClipSize		= 200
SWEP.Primary.Delay			= 0.09
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Primary.Ignite			= true
SWEP.BeltFed				= true

SWEP.IronSightsPos 		= Vector( -4.4, -3, 2 )
