/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "CZ-75 9mm Auto"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "u"
	SWEP.WepSelectLetter	= "u"
	SWEP.WepFolderPath		= "weapon_cz75_auto"
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "autopistol"
SWEP.HoldType2				= "hipfire3"
SWEP.ReloadHoldType			= "csspistol"

SWEP.ViewModel				= "models/weapons/v_pist_ulcz-75.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_ulcz-75.mdl"
SWEP.MagModel				= "models/weapons/w_pist_cz_75_mag.mdl"
SWEP.Weight					= 4

SWEP.ReloadSound			= Sound( "weapons/cz75/reload.wav" )

SWEP.Primary.Sound			= Sound( "weapons/cz75/1.wav" )
SWEP.Primary.Recoil			= 1.12
SWEP.Primary.Damage			= 18
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.05
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.071
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "pistol"

SWEP.IronSightsPos = Vector(-2.51, -3, 1.46)
SWEP.IronSightsAng = Vector(1.5, -2.141, 5)

SWEP.DryFires				= true
SWEP.WorldModelHoldFix		= true -- Fix the World Model

SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.EmpytyIdleAnim			= ACT_VM_DRYFIRE

SWEP.Primary.BurstFire		= 2
SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 2 -- BURST
SWEP.data.modes[3]			= 1 -- SEMI