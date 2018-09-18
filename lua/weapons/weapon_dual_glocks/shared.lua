/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Dual Glock 18's"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "s"
	SWEP.WepSelectLetter	= "s"
	killicon.AddFont( "weapon_dual_glock", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.HoldType				= "dual"
SWEP.HoldType2				= "dual"
SWEP.ViewModel				= "models/weapons/v_dual_glock.mdl"
SWEP.ViewModelFlip			= false
SWEP.WorldModel				= "models/weapons/w_dual_glock.mdl"

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "weapon_glock.single" )
SWEP.Primary.Recoil			= 0.85
SWEP.Primary.Damage			= 18
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.045
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.08
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"

SWEP.Secondary.Sound		= Sound( "weapon_glock.single" )
SWEP.Secondary.Recoil		= 0.85
SWEP.Secondary.Damage		= 18
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.045
SWEP.Secondary.ClipSize		= 20
SWEP.Secondary.Delay		= 0.08
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "pistol"

SWEP.WorldModelHoldFix		= true -- Fix the DoD:S Model
