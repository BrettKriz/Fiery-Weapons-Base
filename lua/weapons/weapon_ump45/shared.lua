/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "UMP .45"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Note				= "Extended magazine"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	
	
	SWEP.IconLetter			= "q"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "Q"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_ump45", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "grip" -- "grip"
SWEP.HoldType2				= "hipfire1"

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_ump45.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_ump45.mdl"
SWEP.Weight					= 6

SWEP.Primary.Sound			= Sound( "Weapon_UMP45.Single" )
SWEP.Primary.Recoil			= 1.2
SWEP.Primary.Damage			= 38
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.037
SWEP.Primary.ClipSize		= 28
SWEP.Primary.Delay			= 0.1085
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "357"
SWEP.Primary.BurstFire		= 2

--[[
SWEP.IronSightsPos = Vector(-8.76, -7, 4.2)
SWEP.IronSightsAng = Vector(-1.4, -0.31, -2)
--]]
SWEP.IronSightsPos = Vector(-8.761, -5, 4.28)
SWEP.IronSightsAng = Vector(-1.5, -0.201, -1.5)

SWEP.FireMode				= 3 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 2 -- BURST
SWEP.data.modes[3]			= 1 -- SEMI
