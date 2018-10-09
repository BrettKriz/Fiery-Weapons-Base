/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "CZ-75 9mm"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "u"
	SWEP.WepSelectLetter	= "u"
	SWEP.WepFolderPath		= "weapon_cz75"
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_pist_ulcz-75.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_ulcz-75.mdl"
SWEP.MagModel				= "models/weapons/w_pist_cz_75_mag.mdl"
SWEP.Weight					= 4

SWEP.ReloadSound			= Sound( "weapons/cz75/reload.wav" )

SWEP.Primary.Sound			= Sound( "weapons/cz75/1.wav" )
SWEP.Primary.Recoil			= 1
SWEP.Primary.Damage			= 19
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.041
SWEP.Primary.ClipSize		= 16
SWEP.Primary.Delay			= 0.051
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"

SWEP.IronSightsPos = Vector(-2.51, -3, 1.46)
SWEP.IronSightsAng = Vector(1.5, -2.141, 5)

SWEP.DryFires				= true
SWEP.WorldModelHoldFix		= true -- Fix the World Model


SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.EmpytyIdleAnim			= ACT_VM_DRYFIRE