/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "SG-552"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "A"
	SWEP.WepSelectLetter	= "A"
	
	killicon.AddFont( "weapon_sg552", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base				= "weapon_fiery_base_rifle"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType			= "rifle"
SWEP.HoldType2			= "hipfire2"
SWEP.ViewModel			= "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_sg552.mdl"
SWEP.Weight				= 8

SWEP.Primary.Sound			= Sound( "Weapon_sg552.Single" )
SWEP.Primary.Recoil			= 1.2
SWEP.Primary.Damage			= 38
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.021
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.098	--0.085
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-8.16, -5, 2.559)
SWEP.IronSightsAng = Vector(0, -0.9, -3)