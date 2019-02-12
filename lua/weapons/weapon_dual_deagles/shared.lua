/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Dual Desert-Eagle's"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "s"
	SWEP.WepSelectLetter	= "s"
	killicon.AddFont( "weapon_dual_deagles", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "dual"
SWEP.HoldType2				= "dual"
SWEP.ViewModel				= "models/weapons/v_dual_eagle.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_deagle.mdl"
--SWEP.WorldModel				= "models/weapons/w_dual_eagle.mdl"
SWEP.ViewModelFlip			= false
SWEP.Weight					= 5

SWEP.Primary.Sound			= Sound( "weapons/dual_eagles/elite-1.wav" )
SWEP.ReloadSound			= Sound( "weapons/jens/magrel.wav" )
SWEP.Primary.Recoil			= 0.5
SWEP.Primary.Damage			= 40
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.04
SWEP.Primary.ClipSize		= 7
SWEP.Primary.Delay			= 0.09
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"
SWEP.Primary.AmmoLetter		= "U"

SWEP.Secondary.Sound		= Sound( "weapons/dual_eagles/elite-2.wav" )
SWEP.Secondary.Recoil		= 0.5
SWEP.Secondary.Damage		= 40
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.04
SWEP.Secondary.ClipSize		= 7
SWEP.Secondary.Delay		= 0.09
SWEP.Secondary.DefaultClip	= 7
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "357"
SWEP.Secondary.AmmoLetter	= "U"

