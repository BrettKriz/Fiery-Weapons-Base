
if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then
	SWEP.PrintName			= "SCAR-H w/GL"					// -- Desplay name
	--SWEP.Category 			= "HL2 Realistic Weapons"	// -- SWEP Category

	
	SWEP.ViewModelFOV		= 62
	SWEP.ViewModelFlip		= false
	
	SWEP.Slot				= 2		// -- Weapon Selection Column 		( How far over )
	SWEP.SlotPos			= 3		// -- Weapon Selection Column's Row ( How far down )
	
	SWEP.FileName 			= "weapon_fiery_scar" // -- What is the name of the FOLDER this is in?
	SWEP.IconFont 			= "CSKillIcons" 			// -- "CSKillIcons" for CSS, "HL2MPTypeDeath" for HL2
	SWEP.IconLetter			= "A" 					// -- Refer to a Killicon sheet
	SWEP.WeaponSelectIconLetter		= "a"
	
	
	killicon.AddFont( SWEP.FileName, SWEP.IconFont, SWEP.IconLetter, Color(255,80,0,255))
end

/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/

SWEP.MuzzleAttachment		= "muzzle" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "1" -- Should be "2" for CSS models or "1" for hl2 models

/*-------------------------------------------------------*/

SWEP.Instructions 			= "Damage: 32% \nRecoil: 61% \nPrecision: 72% \nType: Automatic \nRate of Fire: 650 rounds per minute"

SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category 				= "Fiery Weapons"	// -- SWEP Category
SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.UseHands				= false

SWEP.Spawnable				= !false
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_FNscar.mdl"
SWEP.WorldModel				= "models/weapons/w_FNscar.mdl"

SWEP.Primary.Sound			= Sound( "weapons/scar-h/ar1_fire.wav" )
SWEP.Primary.Recoil			= .61
SWEP.Primary.Damage			= 32
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.028
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.093
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "SMG1_Grenade"
SWEP.Launcher				= true

SWEP.Primary.BurstSound		= Sound("weapons/scar-h/ar1_burst.wav")
SWEP.ReloadSound			= Sound("weapons/scar-h/ar2_reload_rotate.wav")
SWEP.UseScope				= true

SWEP.data 				= {}
SWEP.mode 					= "auto"

SWEP.data.burst 	= {}
SWEP.data.burst.Delay 		= 0.2
SWEP.data.burst.Cone 		= 0.03
SWEP.data.burst.BurstDelay 	= 0.09
SWEP.data.burst.Shots 		= 2
SWEP.data.burst.Counter 	= 0
SWEP.data.burst.Timer 		= 0

SWEP.ArmOffset = Vector (2.6328, -3.3279, -0.9262)
SWEP.ArmAngle = Vector (-9.5004, 37.3692, -6.6421)

/*--------------------------------
Ironsight/Scope
--------------------------------*/
-- IronSightsPos and IronSightsAng are model specific paramaters that tell the game where to move the weapon viewmodel in ironsight mode.

SWEP.IronSightsPos 			= Vector (-4.3261, -5.1157, 0.4711)
SWEP.IronSightsAng 			= Vector (0, 0, -1.3994)
SWEP.IronSightZoom			= 1.2 -- How much the player's FOV should zoom in ironsight mode.
SWEP.ScopeScale 			= 0.4 -- The scale of the scope's reticle in relation to the player's screen size.
SWEP.ScopeZooms				= {2} -- The possible magnification levels of the weapon's scope.   If the scope is already activated, secondary fire will cycle through each zoom level in the table.
SWEP.DrawParabolicSights	= false -- Set to true to draw a cool parabolic sight (helps with aiming over long distances)

SWEP.Primary.BurstFire		= 2
SWEP.FireMode				= 2 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 2 -- BURST
SWEP.data.modes[3]			= 1 -- SEMI