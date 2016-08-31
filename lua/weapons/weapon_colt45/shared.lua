/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "M1911 .45"
	SWEP.Lore				= "A legendary handgun!\nFeel the history flow though your fingers!.."
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "a"
	SWEP.WepSelectLetter	= "a"
	SWEP.WepFolderPath		= "weapon_colt45"
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"
SWEP.ReloadHoldType			= "onehand"

SWEP.ViewModel				= "models/weapons/v_colt.mdl"
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"
SWEP.Mag					= "models/weapons/w_pist_elite_mag.mdl"
--SWEP.WorldModel				= "models/weapons/w_colt.mdl"
SWEP.ViewModelFlip			= false
SWEP.Weight					= 5

SWEP.Primary.Sound			= Sound( "Weapon_colt.Shoot" )
SWEP.Primary.Recoil			= 1.12
SWEP.Primary.Damage			= 26
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.042
SWEP.Primary.ClipSize		= 7
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.WorldModelHoldFix		= !true -- Fix the DoD:S Model

SWEP.IronSightsPos 			= Vector (-3.8551, -5.0515, 3.6184)
SWEP.IronSightsAng 			= Vector (0.4947, 0.078, 0)
--------------------------------------------------------
SWEP.UseHands				= false
SWEP.DryFires				= true -- Unlocks Dry Fire Functionality
SWEP.DoDModelFunction		= true -- Unlocks DoD Model Functionality

SWEP.CanBeEmpty				= !true
SWEP.DoesIdle				= true
SWEP.AbnormalDraw			= false

/*---------------------------------------------------------
	Animation Index
---------------------------------------------------------*/
SWEP.Primary.EmptyAnim		= ACT_VM_PRIMARYATTACK_EMPTY
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK

SWEP.Secondary.EmptyAnim	= ACT_VM_PRIMARYATTACK_EMPTY
SWEP.Secondary.ShootAnim	= ACT_VM_SECONDARYATTACK

SWEP.ReloadAnim				= ACT_VM_RELOAD
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD_EMPTY

SWEP.DrawAnim				= ACT_VM_DRAW -- Check this
SWEP.EmptyDrawAnim			= ACT_VM_DRAW_EMPTY

SWEP.EmpytyIdleAnim			= ACT_VM_IDLE_EMPTY
SWEP.IdleAnim 				= ACT_VM_IDLE
/*---------------------------------------------------------*/