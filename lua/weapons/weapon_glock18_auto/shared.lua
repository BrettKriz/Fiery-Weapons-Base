/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Glock 18 Auto"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "c"
	SWEP.WepSelectLetter	= "c"
	
	killicon.AddFont( "weapon_glock18_auto", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "autopistol"
SWEP.HoldType2				= "hipfire3"
SWEP.ReloadHoldType			= "onehand"
SWEP.ViewModel				= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_glock18.mdl"

SWEP.Weight					= 2
SWEP.AutoSwitchTo			= true
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_Glock.Single" )
SWEP.Primary.Recoil			= 1.7
SWEP.Primary.Damage			= 17
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.045
SWEP.Primary.ClipSize		= 28
SWEP.Primary.Delay			= 0.072
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "pistol"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.DryFires				= true -- Unlock Dry Fire

SWEP.IronSightsPos = Vector(-5.801, 0, 2.64)
SWEP.IronSightsAng = Vector(0.639, -0.055, 0)
SWEP.DryFires				= true -- Unlock Dry Fire

