SWEP.Name = "weapon_k98"
SWEP.WepFolderPath = SWEP.Name

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "HOT BUCK"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "n"
	SWEP.ViewModelFOV		= 80

	killicon.AddFont( SWEP.Name, SWEP.KillFont, SWEP.IconLetter, SWEP.Color)
end

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category 				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.UseHands				= false
SWEP.ViewModel				= "models/weapons/v_garand.mdl"
SWEP.WorldModel				= "models/weapons/w_k98_rg.mdl"
SWEP.WorldModelFix			= true
SWEP.ViewModelFlip			= false
--SWEP.ViewModelFOV			= 72
SWEP.Weight					= 10

SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.ReloadHoldType			= "smg"

SWEP.Primary.Sound			= Sound( "Weapon_garand.Shoot" )
SWEP.Primary.Recoil			= 1.85
SWEP.Primary.Damage			= 13
SWEP.Primary.NumShots		= 9
SWEP.Primary.Cone			= 0.08
SWEP.Primary.ClipSize		= 10
SWEP.Primary.Delay			= 0.25
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "buckshot"

SWEP.WorldModelHoldFix		= true -- Fix the DoD:S Model
SWEP.Chambers				= false
SWEP.DryFires				= true

SWEP.DoDModelFunction		= true

SWEP.Mag					= "models/shells/shell_large.mdl"
SWEP.NoMag					= true

SWEP.Primary.EmptyAnim		= ACT_VM_PRIMARYATTACK
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK_EMPTY
SWEP.RemoveMagAnim			= ACT_VM_PRIMARYATTACK_EMPTY
--SWEP.EmptyIdleAnim			= ACT_VM_IDLE_EMPTY

SWEP.IronSightsPos = Vector (-6.6712, -16.5579, 3.7792)
SWEP.IronSightsAng = Vector (0.2469, 0.0966, 0)