
if (SERVER) then
	AddCSLuaFile("shared.lua")
end

if (CLIENT) then
	SWEP.PrintName 			= "Dual Beretta Elite II's"
	SWEP.Slot 				= 1
	SWEP.SlotPos 			= 2
	SWEP.IconLetter 		= "s"
	SWEP.WepSelectLetter	= "t"
	
	killicon.AddFont("weapon_dual_elites", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ))
end

SWEP.Base 				= "weapon_fiery_base_dual"
SWEP.Category			= "Fiery"

SWEP.Spawnable 				= true
SWEP.AdminSpawnable 		= true
SWEP.HoldType				= "dual"
SWEP.HoldType2				= "dual"
SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.ViewModelFlip 			= false
SWEP.WorldModel 			= "models/weapons/w_pist_elite.mdl"

SWEP.Primary.Sound 			= Sound("Weapon_Elite.Single")
SWEP.Primary.Recoil 		= 1
SWEP.Primary.Damage 		= 20
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Cone 			= 0.02
SWEP.Primary.ClipSize 		= 15
SWEP.Primary.Delay 			= 0.07
SWEP.Primary.Automatic 		= false
SWEP.Primary.Ammo 			= "pistol"

SWEP.Secondary.Sound 			= Sound("Weapon_Elite.Single")
SWEP.Secondary.Recoil		= 0.75
SWEP.Secondary.Damage		= 20
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.02
SWEP.Secondary.ClipSize		= 15
SWEP.Secondary.Delay		= 0.07
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "pistol"

SWEP.DryFires				= true -- Unlock Dry Fire
SWEP.UsesHands				= true
