

if (SERVER) then
	AddCSLuaFile("shared.lua")
	
end

if (CLIENT) then
	SWEP.PrintName 						= "DUAL USP MATCH"
	SWEP.ViewModelFOV					= 70
	SWEP.Slot 							= 1
	SWEP.SlotPos 						= 1
	SWEP.IconLetter 					= "d"
	SWEP.ViewModelFlip 					= true
	SWEP.WepFolderPath					= "weapon_fiery_hl2_usp_dual"
	
	--surface.CreateFont("halflife2", ScreenScale(30), 500, true, true, "CSKillIcons")
	killicon.AddFont(SWEP.WepFolderPath, "halflife2", SWEP.IconLetter, Color( 255, 80, 0, 255 ))
end

/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/

SWEP.MuzzleAttachment		= "1" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "1" -- Should be "2" for CSS models or "1" for hl2 models
/*-------------------------------------------------------*/


SWEP.Instructions 			= "Damage: 12% \nRecoil: 28% \nPrecision: 86% \nRate of Fire: Semi-Automatic"

SWEP.Base 					= "weapon_fiery_base_dual"
SWEP.Category 				= "Fiery"	// -- SWEP Category
SWEP.UseHands				= false

SWEP.Spawnable 				= !false
SWEP.AdminSpawnable 		= true

SWEP.ViewModel 				= "models/weapons/v_pistols.mdl"
SWEP.ViewModelFlip			= false
SWEP.WorldModel 			= "models/weapons/w_pistol.mdl"

SWEP.Primary.Sound 			= Sound("Weapon_pistol.Single")
SWEP.Primary.Recoil 		= 2.8
SWEP.Primary.Damage 		= 12
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Cone 			= 0.038
SWEP.Primary.ClipSize 		= 19
SWEP.Primary.Delay 			= 0.05
SWEP.Primary.Automatic 		= false
SWEP.Primary.Ammo 			= "pistol"

SWEP.ArmOffset 				= Vector (0, -7, -11.38)
SWEP.ArmAngle 				= Vector (45, 1.42, 0)
/*
SWEP.IronSightsPos 			= Vector (-4.6646, -4.001, 3.0968)
SWEP.IronSightsAng 			= Vector (1.0656, 0.7825, 0)
*/
-------