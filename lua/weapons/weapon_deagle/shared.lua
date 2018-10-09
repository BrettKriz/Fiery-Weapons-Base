/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Desert-Eagle .50AE"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "f"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "F"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_deagle", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )

end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "csspistol"
SWEP.ReloadHoldType			= "onehand" -- Because of reload speed

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_deagle.mdl"
SWEP.Weight					= 5.5

SWEP.Primary.Sound			= Sound( "Weapon_Deagle.Single" )
SWEP.Primary.Recoil			= 2.45
SWEP.Primary.Damage			= 62
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.04
SWEP.Primary.ClipSize		= 8
SWEP.Primary.Delay			= 0.3
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.IronSightsPos = Vector(-6.33, 0, 2.079)
SWEP.IronSightsAng = Vector(0.15, 0.054, 0)

SWEP.DryFires				= true -- Unlock Dry Fire
SWEP.DoesIdle				= true

-- Because there is no obvious animation to do this for a deagle
SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.EmpytyIdleAnim			= ACT_VM_DRYFIRE
SWEP.IdleAnim				= ACT_VM_IDLE
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD