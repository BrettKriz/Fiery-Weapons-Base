SWEP.Name = "weapon_fiery_k98_buck" -- Clean up this
SWEP.WepFolderPath = SWEP.Name

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "HOT BUCK"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.ViewModelFOV		= 80
	SWEP.Slot				= 3
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "3"
	SWEP.IconFont			= "DODKillIcons"
	
	SWEP.SelectIconLetter	= "2"
	-- SWEP.SelectIconFont		= "DODSelectIcons"

	killicon.AddFont( SWEP.Name, SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ))
end

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category 				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.UseHands				= false
SWEP.ViewModel				= "models/weapons/v_garand.mdl"
SWEP.WorldModel				= "models/weapons/w_k98_rg.mdl"
SWEP.Mag                    = "models/shells/garand_clip.mdl"

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
SWEP.Primary.Ammo			= "Buckshot"

SWEP.Primary.DryMagEject	= true -- PING!!


SWEP.WorldModelHoldFix		= true -- Fix the DoD:S Model
SWEP.Chambers				= false
SWEP.DryFires				= true

SWEP.DoDModelFunction		= true

--SWEP.Mag					= "models/shells/shell_large.mdl"
SWEP.NoMag					= !true
SWEP.Primary.EmptyAnim		= ACT_VM_PRIMARYATTACK_EMPTY
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK

SWEP.RemoveMagAnim			= ACT_VM_PRIMARYATTACK_EMPTY
--SWEP.EmptyIdleAnim			= ACT_VM_IDLE_EMPTY

SWEP.IronSightsPos = Vector (-6.6712, -16.5579, 3.7792)
SWEP.IronSightsAng = Vector (0.2469, 0.0966, 0)