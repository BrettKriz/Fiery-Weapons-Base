/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Para LMG"			
	SWEP.Author				= "Counter-Strike \nNova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	
	SWEP.IconLetter			= "z"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "Z"
	-- SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_para", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_mg"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "mg"
SWEP.ViewModel				= "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel				= "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModelFlip			= false
SWEP.Mag					= "models/weapons/w_mach_m249_mag.mdl"
SWEP.Weight					= 10

SWEP.Primary.Sound			= Sound( "Weapon_m249.Single" )
SWEP.Primary.Recoil			= 1.96
SWEP.Primary.Damage			= 34
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.062
SWEP.Primary.ClipSize		= 200
SWEP.Primary.Delay			= 0.09
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Primary.Ignite			= not true
SWEP.BeltFed				= true

--SWEP.IronSightsPos 		= Vector( -4.4, -3, 2 )
SWEP.IronSightsPos = Vector(-5.935, -3.31, 2.3)

SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
