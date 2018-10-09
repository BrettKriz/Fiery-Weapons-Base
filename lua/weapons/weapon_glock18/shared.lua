/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Glock 18"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	
	SWEP.IconLetter			= "c"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "C"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_glock18", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base				= "weapon_fiery_base_pistol"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_glock18.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_Glock.Single" )
SWEP.Primary.Recoil			= 0.85
SWEP.Primary.Damage			= 18
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.035
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.BurstFire		= 3


SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.DryFires				= true -- Unlock Dry Fire

SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 1 -- SEMI
SWEP.data.modes[2]			= 2 -- BURST


SWEP.IronSightsPos = Vector(-5.801, 0, 2.64)
SWEP.IronSightsAng = Vector(0.639, -0.055, 0)