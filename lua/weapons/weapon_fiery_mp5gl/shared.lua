
if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )

end

if ( CLIENT ) then
	SWEP.PrintName			= "MP5K w/GL"					// -- Desplay name
	--SWEP.Category 			= "HL2 Realistic Weapons"	// -- SWEP Category
	SWEP.Contact 			= ""						// -- Author E-Mail
	SWEP.Purpose 			= ""						// -- Author's Informations
	
	SWEP.ViewModelFOV		= 62
	SWEP.ViewModelFlip		= false
	
	SWEP.Slot				= 1		// -- Weapon Selection Column 		( How far over )
	SWEP.SlotPos			= 3		// -- Weapon Selection Column's Row ( How far down )
	
	SWEP.FileName 			= "weapon_fiery_mp5gl" // -- What is the name of the FOLDER this is in?
	SWEP.IconFont 			= "CSKillIcons" // -- "CSKillIcons" for CSS, "HL2MPTypeDeath" for HL2
	SWEP.IconLetter			= "x" // -- Refer to a Killicon sheet
	SWEP.WeaponSelectIconLetter		= "x"
	
	
	killicon.AddFont( SWEP.FileName, SWEP.IconFont, SWEP.IconLetter, Color(255, 80, 0, 255))
end

/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/

SWEP.MuzzleAttachment		= "muzzle" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "1" -- Should be "2" for CSS models or "1" for hl2 models

/*-------------------------------------------------------*/

SWEP.Instructions 			= "Damage: 10% \nRecoil: 21% \nPrecision: 80% \nType: Automatic and Burst \nRate of Fire: 690 rounds per minute"

SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category 				= "Fiery Weapons"	// -- SWEP Category
SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.UseHands				= false

SWEP.Spawnable				= !false
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_smg5.mdl"
SWEP.WorldModel				= "models/weapons/w_smg5.mdl"

SWEP.Primary.Sound			= Sound( "weapons/mp5-gl/smg1_fire1.wav" )
SWEP.Primary.Recoil			= .32
SWEP.Primary.Damage			= 10
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.086
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "smg1"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "SMG1_Grenade"
SWEP.Launcher				= true

SWEP.Primary.Burstsound		= Sound("weapons/mp5-gl/smg1_fireburst1.wav")
SWEP.Primary.ReloadSound	= Sound("weapons/mp5-gl/smg1_reload.wav")
SWEP.UseScope				= false

SWEP.data 				= {}
SWEP.mode 					= "auto"

SWEP.data.semi 			= {}
SWEP.data.semi.Cone 		= 0.011

SWEP.data.burst 			= {}
SWEP.data.burst.Delay 		= 0.2
SWEP.data.burst.Cone 		= 0.03
SWEP.data.burst.BurstDelay 	= 0.07
SWEP.data.burst.Shots 		= 3
SWEP.data.burst.Counter 	= 0
SWEP.data.burst.Timer 		= 0

SWEP.IronSightsPos = Vector (-3.139, -9.323, 1.8631)
SWEP.IronSightsAng = Vector (-0.484, 0.1395, 0)

SWEP.ArmOffset = Vector (7, -1, -1.6)
SWEP.ArmAngle = Vector (-21, 22.3, -12.75)