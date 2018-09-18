
if (SERVER) then
	AddCSLuaFile("shared.lua")
	
end

if ( CLIENT ) then
	SWEP.PrintName			= "TACTICAL M3"
	--SWEP.Category 			= "HL2 Realistic Weapons"
	
	SWEP.ViewModelFOV		= 62
	SWEP.ViewModelFlip		= false
	
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	
	SWEP.FileName 			= "weapon_fiery_m3_tact"
	SWEP.WepFolderPath		= SWEP.FileName
	SWEP.IconFont 			= "HalfLife2"
	SWEP.IconLetter			= "k"
	SWEP.WeaponSelectIconLetter		= "K"
	
	killicon.AddFont( SWEP.FileName, "hl2mp", SWEP.IconLetter, Color(255,80,0,255))
end

/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/
SWEP.MuzzleAttachment		= "1" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" -- Should be "2" for CSS models or "1" for hl2 models
-- KEEP THIS LINE \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/
SWEP.EjectDelay				= 0.30 -- I used this to activate the pump animation
/*-------------------------------------------------------*/

local DoorSound = Sound("physics/wood/wood_box_impact_hard3.wav")


SWEP.Base 					= "weapon_fiery_base_shotgun"
SWEP.Category 				= "Fiery Weapons"	// -- SWEP Category

SWEP.HoldType 				= "rifle"
SWEP.HoldType2 				= "shotgun"
SWEP.ReloadHoldType			= "shotgun"

SWEP.Spawnable 				= !false
SWEP.AdminSpawnable 		= true

SWEP.ViewModel 				= "models/weapons/v_ahotgun.mdl"
SWEP.WorldModel 			= "models/weapons/w_ahotgun.mdl"

SWEP.Primary.Sound 			= Sound( "Weapons/tactical_m3/shotgun_fire6.wav" )
SWEP.ReloadSound			= Sound( "weapons/tactical_m3/shotgun_reload" .. math.random( 1, 3 ) .. ".wav" )
SWEP.Primary.ChamberSound	= Sound( "weapons/shotgun/shotgun_cock.wav" )
SWEP.Primary.Recoil 		= 4.5
SWEP.Primary.Damage 		= 6
SWEP.Primary.NumShots 		= 9
SWEP.Primary.Cone 			= 0.075
SWEP.Primary.ClipSize 		= 10
SWEP.Primary.Delay 			= 0.95
SWEP.Primary.Automatic 		= false
SWEP.Primary.Ammo 			= "buckshot"
SWEP.Chambers				= true

SWEP.IronSightsPos = Vector (-6.9652, 0, 1.8746)
SWEP.IronSightsAng = Vector (2.0889, 0.0671, 0)

SWEP.Primary.Chamber		= ACT_SHOTGUN_PUMP