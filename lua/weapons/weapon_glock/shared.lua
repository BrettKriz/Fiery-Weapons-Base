/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then


	SWEP.PrintName			= "Glock 17 (NumFire Vs Burst Test)"			
	SWEP.Author				= "Counter-Strike"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5

	SWEP.IconLetter			= "c"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "C"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_glock", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery" --"Counter-Strike"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.UseHands				= true
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_glock18.mdl"
SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"
SWEP.Weight					= 5

local nshots 				= 4
local tshots				= 8

SWEP.Primary.Sound			= Sound( "Weapon_Glock.Single" )
SWEP.Primary.Recoil			= 1.16
SWEP.Primary.Damage			= 16
SWEP.Primary.NumShots		= nshots
SWEP.Primary.Cone			= 0.045
SWEP.Primary.ClipSize		= nshots * tshots		-- If kept at multiples of 3, numshot would suffice for burst
SWEP.Primary.Delay			= 0.055*3

SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.BurstFire		= 3

SWEP.IronSightsPos = Vector(-5.801, 0, 2.64)
SWEP.IronSightsAng = Vector(0.639, -0.055, 0)

SWEP.EmpytyIdleAnim			= ACT_VM_IDLE -- _EMPTY
SWEP.IdleAnim				= ACT_VM_IDLE
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD
SWEP.Primary.ShootAnim		= ACT_VM_SECONDARYATTACK

SWEP.DryFires				= true -- Unlock Dry Fire