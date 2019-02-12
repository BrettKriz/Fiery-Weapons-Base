/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Dual SVI Infinite's"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "s"
	SWEP.WepSelectLetter	= "s"
	
	killicon.AddFont( "weapon_dual_infinity", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_duel_infit.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_elite.mdl"

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "weapons/dual_infinity/elite-1.wav" )
SWEP.Primary.Reload			= Sound( "" )
SWEP.Primary.Recoil			= 0.75
SWEP.Primary.Damage			= 42
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.04
SWEP.Primary.ClipSize		= 14
SWEP.Primary.Delay			= 0.07
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"
SWEP.Primary.AmmoLetter		= "U"

SWEP.Secondary.Sound		= Sound( "weapons/dual_infinity/elite-1.wav" )
SWEP.Secondary.Recoil		= 0.75
SWEP.Secondary.Damage		= 42
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.04
SWEP.Secondary.ClipSize		= 14
SWEP.Secondary.Delay		= 0.07
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "357"
SWEP.Secondary.AmmoLetter	= "U"

