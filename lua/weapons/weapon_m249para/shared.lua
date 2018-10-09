/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "M249 Para"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "z"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "Z"
	SWEP.SelectIconFont		= "CSSelectIcons"

	killicon.AddFont( "weapon_m249para", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_rifle" -- heh upgrade
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "mg"
SWEP.HoldType2				= "hipfire2"
SWEP.ReloadHoldType			= "rifle"

SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel				= "models/weapons/w_mach_m249para.mdl"
SWEP.Mag					= "models/weapons/w_mach_m249_mag.mdl"

SWEP.Primary.Sound			= Sound( "Weapon_m249.Single" )
SWEP.Primary.Recoil			= 1.2	 
SWEP.Primary.Damage			= 55
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.05
SWEP.Primary.ClipSize		= 300 -- 200 MIN
SWEP.Primary.Delay			= 0.09
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO

SWEP.IronSightsPos = Vector(-5.921, -3, 2.23)
SWEP.IronSightsAng = Vector(0.2, 0.039, 0)

