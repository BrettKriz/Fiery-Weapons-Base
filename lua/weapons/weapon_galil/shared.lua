/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Galil 5.56"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "v"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "V"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_galil", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base				= "weapon_fiery_base_auto_rifle"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType			= "rifle"
SWEP.HoldType2			= "hipfire2"
SWEP.ReloadHoldType		= "smg" -- just for looks

SWEP.ViewModel			= "models/weapons/cstrike/c_rif_galil.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_galil.mdl"
SWEP.ViewModelFlip		= false

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_Galil.Single" )
SWEP.Primary.Recoil			= 1.5
SWEP.Primary.Damage			= 37
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.022
SWEP.Primary.ClipSize		= 35
SWEP.Primary.Delay			= 0.082
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-6.361, 0, 2.482)
SWEP.IronSightsAng = Vector(0, 0, 0)