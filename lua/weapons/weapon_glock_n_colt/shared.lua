/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
	--resource.AddFile(
end

if ( CLIENT ) then

	SWEP.PrintName			= "M1911 .45 & Glock 18"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "s"
	SWEP.WepSelectLetter	= "s"
	
	killicon.AddFont( "weapon_glock_n_colt", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_colt_glock.mdl"
SWEP.WorldModel				= "models/weapons/w_colt_glock.mdl"
SWEP.ViewModelFlip			= true
SWEP.Weight					= 8

SWEP.Primary.Sound			= Sound( "Weapon_Glock.Single" ) -- "weapons/colt n glock/elite-1.wav"
SWEP.ReloadSound			= Sound( "weapons/jens/magrel.wav" )
SWEP.Primary.Recoil			= 0.8
SWEP.Primary.Damage			= 17.25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.051
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.074
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"

SWEP.Secondary.Sound		= Sound( "weapons/colt n glock/elite-2.wav" )
SWEP.Secondary.Recoil		= 1.2
SWEP.Secondary.Damage		= 33
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.045
SWEP.Secondary.ClipSize		= 8
SWEP.Secondary.Delay		= 0.09
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "357"

SWEP.DoesIdle				= true
SWEP.WorldModelHoldFix		= true -- Fix the DoD:S Model