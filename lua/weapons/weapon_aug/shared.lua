/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "AUG 3"	-- StG 77
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "e"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "E"
	-- SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_aug", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base				= "weapon_fiery_base_auto_rifle"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType			= "grip"
SWEP.HoldType2			= "hipfire2"
SWEP.ReloadHoldType		= "smg"

SWEP.ViewModel			= "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_aug.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_aug.Single" )
SWEP.Primary.Recoil			= 1.1
SWEP.Primary.Damage			= 36
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.025
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.07
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 1 -- SEMI

--SWEP.IronSightsPos = Vector(-8.521, 0, 1.2)
--SWEP.IronSightsAng = Vector(-1.5, -3, -7.802)

SWEP.IronSightsPos = Vector(-8.521, 0, 0.15)
SWEP.IronSightsAng = Vector( 0.95, -2.65, -7.802)

