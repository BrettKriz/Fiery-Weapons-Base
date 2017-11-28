/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "AK-47 7.62"			
	SWEP.Author				= "Counter-Strike: Global Offensive \nNova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "b"
	
	killicon.AddFont( "weapon_csgo_ak-47", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base				= "weapon_fiery_base_auto_rifle"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType			= "rifle"
SWEP.HoldType2			= "hipfire2"
SWEP.ViewModel			= "models/weapons/v_cgo_ak47.mdl"
SWEP.ViewModelFlip		= true
SWEP.WorldModel			= "models/weapons/w_cgo_ak47.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_AK47.Single" )
SWEP.Primary.Recoil			= 1.83
SWEP.Primary.Damage			= 52
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.098
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"


SWEP.IronSightsPos 			= Vector(5.48, 0, 1.24)
SWEP.IronSightsAng 			= Vector(2, 0, 0)
SWEP.DoesIdle				= true
