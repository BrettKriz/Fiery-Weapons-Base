/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "L96 AWP"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "r"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "R"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_awp", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base				= "weapon_fiery_base_sniper"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType			= "sniper"
SWEP.HoldType2			= "hipfire2"
SWEP.ViewModel			= "models/weapons/cstrike/c_snip_AWP.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_AWP.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_AWP.Single" )
SWEP.Primary.Recoil			= 2.2
SWEP.Primary.Damage			= 158
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.005
SWEP.Primary.ClipSize		= 10
SWEP.Primary.Delay			= 1.0
-- SWEP.Primary. DefaultClip -- OBSOLEET!	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "ar2"
--SWEP.Primary.ShellType      = SHELL_338MAG

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-7.441, -3, 2.319)
SWEP.IronSightsAng = Vector(0, 0, -4)

--SWEP.Scope				= {0}
