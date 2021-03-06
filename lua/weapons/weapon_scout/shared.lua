/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Scout Tactical"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	
	SWEP.IconLetter			= "n"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "N"
	-- SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_scout", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_sniper"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_scout.mdl"
SWEP.Mag					= "models/weapons/w_snip_awp_mag.mdl"

SWEP.Primary.Sound			= Sound( "Weapon_scout.Single" )
SWEP.Primary.Recoil			= 1.6
SWEP.Primary.Damage			= 64
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.005
SWEP.Primary.ClipSize		= 10
SWEP.Primary.Delay			= 1.4

SWEP.Primary.Automatic		= true	-- Meh? @@@
--SWEP.Primary.Ammo			= "smg1"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

--SWEP.ForceModifier			=

SWEP.Scope					= 1 -- xZoom
SWEP.data 					= {} -- VERY IMPORTANT

SWEP.data.zooms				= {} -- DIDO 
SWEP.data.zooms[1]			= 6
SWEP.data.zooms[2]			= 12



