/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
	resource.AddFile("models/weapons/v_pist_beretta_s.mdl")
end

if ( CLIENT ) then

	SWEP.PrintName			= "Beretta Elite II"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	
	SWEP.IconLetter			= "y"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "Y"
	SWEP.SelectIconFont		= "CSSelectIcons"

	killicon.AddFont( "weapon_elite", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base				= "weapon_fiery_base_pistol"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/v_pist_beretta_s.mdl"
SWEP.ViewModelFlip		= true
SWEP.ViewModelFOV		= 70
SWEP.WorldModel			= "models/weapons/w_pist_elite_single.mdl"
SWEP.Mag				= "models/weapons/w_pist_elite_mag.mdl"
SWEP.UseHands			= false

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_elite.Single" )
SWEP.Primary.Recoil			= 1.05
SWEP.Primary.Damage			= 21
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.016
SWEP.Primary.ClipSize		= 15
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"
--							LEFT/RIGHT IN/OUT UP/DOWN			
SWEP.IronSightsPos 			= Vector(4.517, 0, 3.319)
SWEP.IronSightsAng 			= Vector(-0.101, 0.1, 0)
/*
SWEP.IronSightsPos = Vector (4.5359, 0, 3.3108)
SWEP.IronSightsAng = Vector (0, 0, 0)
*/
SWEP.DoesIdle				= true
SWEP.DryFires				= true
-- Unlock Dry Fire, But thats a bad animation on the default model
-- SO, if your using a model other than stock, turn this on!!