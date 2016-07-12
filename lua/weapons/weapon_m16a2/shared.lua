/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "M16A2"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Lore				= "The only option is 3 shot burst.."
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "w"
	SWEP.WepSelectLetter	= "w"
	SWEP.IconColor			= Color( 255, 120, 0, 255 )
	SWEP.WepFolderPath		= "weapon_m16a2"
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Base					= "weapon_fiery_base_rifle"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "ar2"
SWEP.ReloadHoldType			= "smg"
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_m4a1_silencer.mdl"

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_M4A1.Silenced" )
SWEP.Primary.Recoil			= 1.24
SWEP.Primary.Damage			= 30
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.035
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.4
SWEP.Primary.BurstDelay		= 0.089
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.BurstFire		= 3


/*---------------------------------------------------------
	Animation Index
---------------------------------------------------------*/

SWEP.Primary.EmptyAnim		= ACT_VM_PRIMARYATTACK_SILENCED
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK_SILENCED

SWEP.ReloadAnim				= ACT_VM_RELOAD_SILENCED
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD_SILENCED

SWEP.DrawAnim				= ACT_VM_DRAW_SILENCED
SWEP.EmptyDrawAnim			= ACT_VM_DRAW_SILENCED

SWEP.EmpytyIdleAnim			= ACT_VM_IDLE_SILENCED
SWEP.IdleAnim 				= ACT_VM_IDLE_SILENCED
/*---------------------------------------------------------*/

SWEP.IronSightsPos = Vector(-8.32, 0, 0.079)
SWEP.IronSightsAng = Vector(2.799, -2.901, -1.9)

SWEP.ArmOffset = Vector(0.759, -2.481, 0.079)
SWEP.ArmAngle = Vector(-9.2, -5.5, -12.7)