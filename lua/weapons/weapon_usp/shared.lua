/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "USP .45"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	
	SWEP.IconLetter			= "a"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "A"
	-- SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_usp", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "csspistol"

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_usp.mdl"
SWEP.Weight					= 4

SWEP.Primary.Sound			= Sound( "Weapon_usp.Single" )
SWEP.Primary.Recoil			= 1.3
SWEP.Primary.Damage			= 32
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.035
SWEP.Primary.ClipSize		= 12
SWEP.Primary.Delay			= 0.06
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.DryFires				= true -- Unlock Dry Fire 
SWEP.Silencer				= {false}
SWEP.WorksUnderWater		= true

SWEP.Mag					= "models/weapons/w_pist_223_mag.mdl"

SWEP.IronSightsPos = Vector(-5.881, 0, 2.64)
SWEP.IronSightsAng = Vector(-0.101, 0.045, 0)
-- 

SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.Primary.ShootAnim		= "shoot1_unsil"
SWEP.EmpytyIdleAnim			= ACT_VM_IDLE_EMPTY
SWEP.IdleAnim 				= ACT_VM_IDLE