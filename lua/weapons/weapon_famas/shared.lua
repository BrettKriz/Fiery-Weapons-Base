/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Famas F1"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1

	SWEP.IconLetter			= "t"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "T"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_famas", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base				= "weapon_fiery_base_auto_rifle"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType			= "rifle"
SWEP.HoldType2			= "hipfire2"
SWEP.ReloadHoldType		= "smg"
SWEP.ViewModel			= "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_famas.mdl"
SWEP.ViewModelFlip		= false

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_famas.Single" )
SWEP.Primary.Recoil			= 0.9
SWEP.Primary.Damage			= 36
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 25
SWEP.Primary.Delay			= 0.092
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

--SWEP.Range = 1

SWEP.IronSightsPos = Vector(-6.281, -2, 1.32)
SWEP.IronSightsAng = Vector(0.2, -0.201, -2.5)

SWEP.Primary.BurstFire		= 3
SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 2 -- BURST
