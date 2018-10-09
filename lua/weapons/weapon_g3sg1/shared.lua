/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "G3SG/1"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	
	SWEP.IconLetter			= "i"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "I"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_g3sg1", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base				= "weapon_fiery_base_auto_rifle"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/cstrike/c_snip_g3sg1.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_g3sg1.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_g3sg1.Single" )
SWEP.Primary.Recoil			= 1.45
SWEP.Primary.Damage			= 52
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.005
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.12
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-6.2, -3.5, 1.84)
SWEP.IronSightsAng = Vector(0, 0, -4)
