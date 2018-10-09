// Coded by Nova Prospekt
// USP Silent




if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Suppressed USP .45"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Lore				= "The suppressor seems to be welded on..."
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	
	SWEP.IconLetter			= "a"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "A"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_fiery_usp_s", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end
SWEP.Category				= "Fiery"
SWEP.Base					= "weapon_fiery_base_pistol"

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"
SWEP.ReloadHoldType			= "csspistol"

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.ViewModelFlip			= false
SWEP.WorldModel				= "models/weapons/w_pist_usp_silencer.mdl"
SWEP.Weight					= 4

SWEP.Primary.Sound			= Sound( "Weapon_usp.SilencedShot" )
SWEP.Primary.Recoil			= 1.5
SWEP.Primary.Damage			= 18
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.035
SWEP.Primary.ClipSize		= 12
SWEP.Primary.Delay			= 0.052
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.WorksUnderWater		= true

SWEP.Mag					= "models/weapons/w_pist_223_mag.mdl"
/*---------------------------------------------------------
	Animation Index
---------------------------------------------------------*/
SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE_SILENCED
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK_SILENCED

SWEP.Secondary.EmptyAnim	= ACT_VM_IDLE_SILENCED
SWEP.Secondary.ShootAnim	= ACT_VM_SECONDARYATTACK

SWEP.ReloadAnim				= ACT_VM_RELOAD_SILENCED
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD_SILENCED

SWEP.DrawAnim				= ACT_VM_DRAW_SILENCED
SWEP.EmptyDrawAnim			= ACT_VM_DRAW_SILENCED

SWEP.EmpytyIdleAnim			= ACT_VM_IDLE_SILENCED
SWEP.IdleAnim 				= ACT_VM_IDLE_SILENCED
--[[
SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE_SILENCED
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK_SILENCED

SWEP.Secondary.EmptyAnim	= ACT_VM_IDLE_SILENCED
SWEP.Secondary.ShootAnim	= ACT_VM_SECONDARYATTACK

SWEP.ReloadAnim				= ACT_VM_RELOAD_SILENCED
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD_SILENCED

SWEP.DrawAnim				= ACT_VM_DRAW_SILENCED
SWEP.EmptyDrawAnim			= ACT_VM_DRAW_SILENCED

SWEP.EmpytyIdleAnim			= ACT_VM_IDLE_SILENCED
SWEP.IdleAnim 				= ACT_VM_IDLE_SILENCED
--]]
/*---------------------------------------------------------*/
SWEP.IronSightsPos = Vector(-5.881, 0, 2.64)
SWEP.IronSightsAng = Vector(-0.101, 0.045, 0)		