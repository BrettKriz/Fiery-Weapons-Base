/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "P228 .375"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5

	SWEP.IconLetter			= "y"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "Y"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_p228", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.ViewModelFlip			= false
SWEP.WorldModel				= "models/weapons/w_pist_p228.mdl"
SWEP.Mag					= "models/weapons/w_pist_p250_mag.mdl"

SWEP.Weight					= 3
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_p228.Single" )
SWEP.Primary.Recoil			= 1.2
SWEP.Primary.Damage			= 28
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.025
SWEP.Primary.ClipSize		= 13
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357" -- above a .357 is a .357
SWEP.Primary.AmmoLetter		= "T"

--							LEFT/RIGHT IN/OUT UP/DOWN			
SWEP.IronSightsPos = Vector(-5.961, -1, 2.96)
SWEP.IronSightsAng = Vector(-0.601, -0.026, 0)

SWEP.DryFires				= true 
SWEP.WorksUnderWater		= true
-- Unlock Dry Fire, But thats a bad animation on the default model
-- SO, if your using a model other than stock, turn this on!!