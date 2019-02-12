/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Dual .357 Python's"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "s"
	SWEP.WepSelectLetter	= "s"
	
	killicon.AddFont( "weapon_dual_python", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_dual_pyths.mdl"
SWEP.WorldModel				= "models/weapons/w_357.mdl"
SWEP.ViewModelFlip			= false

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "weapon_357.single" )
SWEP.ReloadSound			= Sound( "weapons/dual_pythons/magrel.wav" )

SWEP.Primary.Recoil			= 1.65
SWEP.Primary.Damage			= 57
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.035
SWEP.Primary.ClipSize		= 6
SWEP.Primary.Delay			= 0.5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"
SWEP.Primary.AmmoLetter		= "T"

SWEP.Secondary.Sound		= Sound( "weapon_357.single" )
SWEP.Secondary.Recoil		= 1.65
SWEP.Secondary.Damage		= 57
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.035
SWEP.Secondary.ClipSize		= 6
SWEP.Secondary.Delay		= 0.5
SWEP.Secondary.DefaultClip	= 6
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "357"
SWEP.Secondary.AmmoLetter	= "T"

SWEP.NoMag					= true