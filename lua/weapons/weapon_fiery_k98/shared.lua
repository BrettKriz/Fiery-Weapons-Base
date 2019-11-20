if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "KAR 98K"	
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 5
	
	SWEP.IconLetter			= "n"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "N"
	-- SWEP.SelectIconFont		= "CSSelectIcons"

	killicon.AddFont( "weapon_fiery_k98", SWEP.KillFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ))
end

SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire1"
SWEP.ReloadHoldType			= "smg"

SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category 				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.UseHands				= false
SWEP.ViewModel				= "models/weapons/v_k98.mdl"
SWEP.WorldModel				= "models/weapons/w_k98.mdl"
SWEP.ViewModelFlip			= false
--SWEP.ViewModelFOV			= 72
SWEP.Weight					= 10


SWEP.Primary.Sound			= Sound( "Weapon_kar.Shoot" )
SWEP.Primary.Recoil			= 2
SWEP.Primary.Damage			= 126
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.01
SWEP.Primary.ClipSize		= 5
SWEP.Primary.Delay			= 0.45
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.AmmoLetter		= "V"

SWEP.Chambers				= true
SWEP.WorldModelHoldFix		= true -- Fix the DoD:S Model


--SWEP.Mag					= "models/shells/shell_large.mdl"
SWEP.Mag					= "models/props_junk/watermelon01.mdl" -- Show up darn you

SWEP.NoMag					= !true

SWEP.Primary.EmptyAnim		= ACT_VM_PRIMARYATTACK_EMPTY
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK_EMPTY
SWEP.Primary.Chamber		= ACT_VM_PRIMARYATTACK

SWEP.IronSightsPos = Vector (-6.6712, -16.5579, 3.7792)
SWEP.IronSightsAng = Vector (0.2469, 0.0966, 0)
