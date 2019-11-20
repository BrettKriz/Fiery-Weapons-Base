/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "USP Match Auto"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 4
	
	SWEP.IconLetter			= "-"
	SWEP.IconFont			= "HLKillIcons"
	SWEP.SelectIconLetter	= "d"
	-- SWEP.SelectIconFont		= "HLSelectIcons"
	
	killicon.AddFont( "weapon_usp_match_auto", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

	
SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "autopistol"
SWEP.HoldType2				= "onehand"
SWEP.ReloadHoldType			= "onehand"
SWEP.ViewModel				= "models/weapons/c_pistol.mdl"
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"
SWEP.ViewModelFlip			= false
SWEP.Mag					= "models/weapons/w_pist_hkp2000_mag.mdl"
SWEP.Weight					= 5

SWEP.ReloadSound			= Sound( "weapons/pistol/pistol_reload1.wav" )

SWEP.Primary.Sound			= Sound( "Weapon_pistol.Single" )
SWEP.Primary.ReloadSound	= Sound( "weapons/pistol/pistol_reload1.wav" )
SWEP.Primary.Recoil			= 1.05
SWEP.Primary.Damage			= 16
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.03
SWEP.Primary.ClipSize		= 32
SWEP.Primary.Delay			= 0.06
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "pistol"

SWEP.IronSightsPos = Vector(-6.08, 0, 2.88)
SWEP.IronSightsAng = Vector(0.6, -1.4, 0)

SWEP.WorksUnderWater		= true
SWEP.DryFires				= true -- Unlock Dry Fire

SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.EmpytyIdleAnim			= ACT_VM_IDLE_EMPTY
SWEP.IdleAnim				= ACT_VM_IDLE
SWEP.Primary.CantAttack		= ACT_VM_DRYFIRE
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD_EMPTY