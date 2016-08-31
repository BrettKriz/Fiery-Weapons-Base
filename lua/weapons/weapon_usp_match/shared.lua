/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "USP Match"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "("
	SWEP.WepSelectLetter	= "d"
	
	killicon.AddFont( "weapon_usp_match", "HLKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"
SWEP.ReloadHoldType			= "onehand"
SWEP.ViewModel				= "models/weapons/c_pistol.mdl"
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"
SWEP.ViewModelFlip			= false
SWEP.Mag					= "models/weapons/w_pist_hkp2000_mag.mdl"
SWEP.Weight					= 4

SWEP.ReloadSound			= Sound( "weapons/pistol/pistol_reload1.wav" )

SWEP.Primary.Sound			= Sound( "Weapon_pistol.Single" )
SWEP.Primary.ReloadSound	= Sound( "weapons/pistol/pistol_reload1.wav" )
SWEP.Primary.Recoil			= 1.2
SWEP.Primary.Damage			= 17.8
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 18
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"
SWEP.DryFires				= true -- Unlock Dry Fire

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"


SWEP.WorksUnderWater		= true
SWEP.UsesHands				= true
SWEP.SupressBones 			= false
SWEP.DoDModelFunction 		= false

SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.EmpytyIdleAnim			= ACT_VM_IDLE_EMPTY
SWEP.IdleAnim				= ACT_VM_IDLE
SWEP.Primary.CantAttack		= ACT_VM_DRYFIRE
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD_EMPTY

SWEP.IronSightsPos = Vector(-6.08, 0, 2.88)
SWEP.IronSightsAng = Vector(0.6, -1.4, 0)