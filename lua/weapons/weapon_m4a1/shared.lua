/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "M4A1"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "w"
	SWEP.WepSelectLetter	= "w"
	SWEP.WepFolderPath		= "weapon_m4a1" 
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_rifle"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.ReloadHoldType			= "smg"
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_m4a1.mdl"
SWEP.Weight					= 6.5

SWEP.Primary.Sound			= Sound( "Weapon_M4A1.Single" )
SWEP.Primary.Recoil			= 1
SWEP.Primary.Damage			= 30
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.08
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.IronSightsPos = Vector(-8.32, 0, 0.079)
SWEP.IronSightsAng = Vector(2.799, -2.901, -1.9)

SWEP.ArmOffset = Vector(0.759, -2.481, 0.079)
SWEP.ArmAngle = Vector(-9.2, -5.5, -12.7)