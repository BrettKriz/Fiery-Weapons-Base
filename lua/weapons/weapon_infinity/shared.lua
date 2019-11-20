/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "SVI Ininity .50AE"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "f"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "f"
	-- SWEP.SelectIconFont		= "CSSelectIcons3"
	--
	killicon.AddFont( "weapon_infinity", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )

end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "onehand"
SWEP.HoldType2				= "onehand"
SWEP.ReloadHoldType			= "onehand" -- Because of reload speed

SWEP.ViewModel				= "models/weapons/v_pist_infini.mdl"
SWEP.ViewModelFlip			= true
SWEP.WorldModel				= "models/weapons/w_pist_infini.mdl"
SWEP.Weight					= 6

SWEP.DrawSound				= Sound( "weapons/infinity/sliderelease.wav" )
SWEP.ReloadSound			= Sound( "weapons/infinity/rel.wav" )

SWEP.Primary.Sound			= Sound( "weapons/infinity/svi.wav" )
SWEP.Primary.Recoil			= 1.8
SWEP.Primary.Damage			= 66
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.042
SWEP.Primary.ClipSize		= 10
SWEP.Primary.Delay			= 0.28
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"
SWEP.Primary.AmmoLetter		= "U"

SWEP.DryFires				= true
SWEP.Emptyable				= true -- Unlock Dry Fire
SWEP.DoesIdle				= true

-- Because there is no obvious animation to do this for a deagle clone
SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.EmpytyIdleAnim			= ACT_VM_DRYFIRE
SWEP.IdleAnim				= ACT_VM_IDLE
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD

SWEP.IronSightsPos = Vector(3.279, 0, 1.679)
SWEP.IronSightsAng = Vector(2, 0.2, 0)