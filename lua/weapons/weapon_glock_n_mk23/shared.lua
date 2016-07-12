
if (SERVER) then
	AddCSLuaFile("shared.lua")
	--resource.AddFile(
end

if (CLIENT) then
	SWEP.PrintName 			= "MK 23 & Glock 20"
	SWEP.Slot 				= 1
	SWEP.SlotPos 			= 2
	SWEP.IconLetter 		= "s"
	SWEP.WepSelectLetter	= "t"
	SWEP.WepFolderPath      = "weapon_glock_n_mk23"
	
	killicon.AddFont(SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ))
end

SWEP.Base 					= "weapon_fiery_base_dual"
SWEP.Category				= "Fiery"

SWEP.Spawnable 				= true
SWEP.AdminSpawnable 		= true
SWEP.HoldType				= "dual"
SWEP.HoldType2				= "dual"

SWEP.ViewModel 				= "models/weapons/v_mk23_glock.mdl"
SWEP.ViewModelFlip 			= false
SWEP.WorldModel 			= "models/weapons/w_mk23_glock.mdl"
SWEP.Weight					= 8
SWEP.ReloadSound			= Sound( "weapons/jens/magrel.wav" )

SWEP.Primary.Sound 			= Sound("Weapon_Glock.Single")
SWEP.Primary.Recoil 		= 1.1
SWEP.Primary.Damage 		= 15
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Cone 			= 0.04
SWEP.Primary.ClipSize 		= 20
SWEP.Primary.Delay 			= 0.055
SWEP.Primary.Automatic 		= false
SWEP.Primary.Ammo 			= "pistol"

SWEP.Secondary.Sound 		= Sound("weapons/mk23 n glock/elite-1.wav")
SWEP.Secondary.Recoil		= 1.75
SWEP.Secondary.Damage		= 21
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.035
SWEP.Secondary.ClipSize		= 12
SWEP.Secondary.Delay		= 0.065
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "357"

SWEP.DryFires				= true -- Unlock Dry Fire
SWEP.UsesHands				= false
