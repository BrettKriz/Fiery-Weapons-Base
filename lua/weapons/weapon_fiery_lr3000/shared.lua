
if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
	
	
end

if ( CLIENT ) then
	SWEP.PrintName			= "LR 3000 w/GL"					// -- Desplay name
	--SWEP.Category 			= "HL2 Realistic Weapons"	// -- SWEP Category
	SWEP.Contact 			= ""						// -- Author E-Mail
	SWEP.Purpose 			= ""						// -- Author's Informations
	
	SWEP.ViewModelFOV		= 62
	SWEP.ViewModelFlip		= false
	
	SWEP.Slot				= 2		// -- Weapon Selection Column 		( How far over )
	SWEP.SlotPos			= 3		// -- Weapon Selection Column's Row ( How far down )
	
	SWEP.FileName 			= "weapon_fiery_lr3000" // -- What is the name of the FOLDER this is in?
	SWEP.IconFont 			= "CSKillIcons" // -- "CSKillIcons" for CSS, "HL2MPTypeDeath" for HL2
	SWEP.IconLetter			= "w" // -- Refer to a Killicon sheet
	SWEP.WeaponSelectIconLetter		= "W"
	
	
	killicon.AddFont( SWEP.FileName, SWEP.IconFont, SWEP.IconLetter, Color(255,80,0,255))
end

/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/

SWEP.MuzzleAttachment		= "muzzle" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "1" -- Should be "2" for CSS models or "1" for hl2 models

/*-------------------------------------------------------*/

SWEP.Instructions 		= "Damage: 19% \nRecoil: 42% \nPrecision: 64% \nType: Automatic \nRate of Fire: 705 rounds per minute"

SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category 			= "Fiery Weapons"	// -- SWEP Category
SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"

SWEP.Spawnable				= !false
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_lr3000.mdl"
SWEP.WorldModel				= "models/weapons/w_lr3000.mdl"

SWEP.Primary.Sound			= Sound( "weapons/lr3000/ar1_fire.wav" )
SWEP.Primary.Recoil			= .42
SWEP.Primary.Damage			= 19
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.036
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.085
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "SMG1_Grenade"
SWEP.Launcher				= true

SWEP.Primary.Burstsound				= Sound("weapons/lr3000/ar2_burst.wav")
SWEP.ReloadSound			= Sound("weapons/lr3000/ar2_reload_rotate.wav")
SWEP.UseScope						= false

SWEP.data 				= {}
SWEP.mode 					= "auto"

SWEP.data.semi 			= {}
SWEP.data.semi.Cone 		= 0.015

SWEP.data.burst 			= {}
SWEP.data.burst.Delay 		= 0.2
SWEP.data.burst.Cone 		= 0.14
SWEP.data.burst.BurstDelay 	= 0.07
SWEP.data.burst.Shots 		= 3
SWEP.data.burst.Counter 	= 0
SWEP.data.burst.Timer 		= 0


SWEP.IronSightsPos = Vector (-3.4183, -9.6942, 0.6786)
SWEP.IronSightsAng = Vector (0.2063, 0.1386, 0)

SWEP.ArmOffset = Vector (2.6328, -3.3279, -0.9262)
SWEP.ArmAngle = Vector (-9.5004, 37.3692, -6.6421)