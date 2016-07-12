/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "Five-Seven" -- 5.7	
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "u"
	SWEP.WepSelectLetter	= "u"
	SWEP.WepFolderPath		= "weapon_five-seven"
	ErrorNoHalt("CHECKS: WepFolder: "..tostring(SWEP.WepFolderPath).."WepFont: "..tostring(SWEP.WepSelectFont).."Letter: "..tostring(SWEP.IconLetter).."Color: "..tostring(SWEP.IconColor).."\n")
	killicon.AddFont( SWEP.WepFolderPath, SWEP.WepSelectFont, SWEP.IconLetter, SWEP.IconColor )
	
end


SWEP.Base				= "weapon_fiery_base_pistol"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/cstrike/c_pist_fiveseven.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_fiveseven.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_FiveSeven.Single" )
SWEP.Primary.Recoil			= 1
SWEP.Primary.Damage			= 26
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.035
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "smg1" -- 5.7 ammo...

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-5.921, -2.9, 3.04)
SWEP.IronSightsAng = Vector(-0.5, 0.05, 0)

SWEP.DryFires				= false 
-- Unlock Dry Fire, if you want to see a Flawed Animation lol