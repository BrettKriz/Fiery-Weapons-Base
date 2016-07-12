
if (SERVER) then
	AddCSLuaFile("shared.lua")
	--resource.AddFile(
end

if (CLIENT) then
	SWEP.PrintName 			= "Dual Sword's 9mm"
	SWEP.Slot 				= 1
	SWEP.SlotPos 			= 2
	SWEP.IconLetter 		= "s"
	SWEP.WepSelectLetter	= "t"
	
	killicon.AddFont("weapon_dual_sword", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ))
end

SWEP.Base 				= "weapon_fiery_base_dual"
SWEP.Category			= "Fiery"

SWEP.Spawnable 				= true
SWEP.AdminSpawnable 		= true

SWEP.ViewModel 				= "models/weapons/v_pist_sword.mdl"
SWEP.ViewModelFlip 			= true
--SWEP.WorldModel 			= "models/weapons/w_pist_sword.mdl"
SWEP.WorldModel 			= "models/weapons/w_pist_elite.mdl"

SWEP.Primary.Sound 			= Sound("Weapon_Elite.Single")
SWEP.ReloadSound			= Sound( "weapons/antipirate/magrel.wav" )
SWEP.Primary.Recoil 		= 1
SWEP.Primary.Damage 		= 20
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Cone 			= 0.02
SWEP.Primary.ClipSize 		= 17
SWEP.Primary.Delay 			= 0.07
SWEP.Primary.Automatic 		= false
SWEP.Primary.Ammo 			= "pistol"

SWEP.Secondary.Sound 			= Sound("Weapon_Elite.Single")
SWEP.Secondary.Recoil		= 0.75
SWEP.Secondary.Damage		= 20
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.Cone			= 0.02
SWEP.Secondary.ClipSize		= 17
SWEP.Secondary.Delay		= 0.07
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "pistol"

SWEP.DryFires				= true -- Unlock Dry Fire
SWEP.UsesHands				= true
