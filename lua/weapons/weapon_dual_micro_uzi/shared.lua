/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/
if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Dual Micro-UZI's"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "l"
	SWEP.WepSelectLetter	= "l"
	
	killicon.AddFont( "weapon_dual_micro_uzi", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_dual_micro.mdl"
SWEP.WorldModel				= "models/weapons/w_dual_micro.mdl"
SWEP.ViewModelFlip			= false

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "weapons/imi_micro_uzi/elite-1.wav" )
SWEP.Primary.Recoil			= 1.2
SWEP.Primary.Damage			= 19
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.05
SWEP.Primary.ClipSize		= 50
SWEP.Primary.Delay			= 0.09

SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "pistol"

SWEP.Secondary.Sound		= Sound( "weapons/imi_micro_uzi/elite-2.wav" )
SWEP.Secondary.Recoil		= 1.2
SWEP.Secondary.Damage		= 19
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.5
SWEP.Secondary.ClipSize		= 50
SWEP.Secondary.Delay		= 0.09
SWEP.Secondary.Automatic	= true
SWEP.Secondary.Ammo			= "pistol"

SWEP.WorldModelHoldFix		= true -- Fix the DoD:S Model