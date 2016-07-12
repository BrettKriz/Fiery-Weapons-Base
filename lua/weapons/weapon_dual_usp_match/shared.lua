

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	--resource.AddFile(
end

if ( CLIENT ) then

	SWEP.PrintName			= "Dual USP .45 Match's"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "s"
	SWEP.IconLetter			= "s"
	
	killicon.AddFont( "weapon_dual_usp_match", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.HoldType				= "dual"
SWEP.HoldType2				= "dual"
SWEP.ViewModel				= "models/weapons/v_dual_match.mdl"
SWEP.WorldModel				= "models/weapons/w_dual_match.mdl"
SWEP.ViewModelFlip			= false

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "weapons/mk23 n glock/elite-1.wav" ) -- "weapons/dual_usp_match/elite-1.wav"
SWEP.ReloadSound			= Sound( "weapons/jens/magrel.wav" )
SWEP.Primary.Recoil			= 0.4
SWEP.Primary.Damage			= 23
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.04
SWEP.Primary.ClipSize		= 12
SWEP.Primary.Delay			= 0.08
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.Secondary.Sound		= Sound( "weapons/mk23 n glock/elite-1.wav" )
SWEP.Secondary.Recoil		= 0.4
SWEP.Secondary.Damage		= 23
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.04
SWEP.Secondary.ClipSize		= 12
SWEP.Secondary.Delay		= 0.08
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "357"

SWEP.WorksUnderWater		= true
SWEP.WorldModelHoldFix		= true -- Fix the DoD:S Model