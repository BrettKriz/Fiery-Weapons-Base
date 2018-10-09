/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "AK-47"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "b"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "B"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_ak-47", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

-- Note to Self: Add secret AK-47 powers 

SWEP.Base					= "weapon_fiery_base_rifle"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_ak47.mdl"

SWEP.Weight					= 6
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_AK47.Single" )
SWEP.Primary.Recoil			= 1.5
SWEP.Primary.Damage			= 40
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

--SWEP.Range						= 55 *(12*3) -- Yards
SWEP.Range						= 5

SWEP.IronSightsPos = Vector(-6.6, 0, 2.039)
SWEP.IronSightsAng = Vector(2.549, 0.017, 0)
