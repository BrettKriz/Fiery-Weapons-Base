
if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
	
	
end

if ( CLIENT ) then
	SWEP.PrintName			= "MINIGUN (SMOD)"					// -- Desplay name
	SWEP.Purpose 			= "Shear Rampage."			// -- Author's Informations
	
	SWEP.ViewModelFOV		= 62
	SWEP.ViewModelFlip		= false
	SWEP.Slot				= 4		// -- Weapon Selection Column 		( How far over )
	SWEP.SlotPos			= 3		// -- Weapon Selection Column's Row ( How far down )
	
	SWEP.IconFont 			= "CSKillIcons" 					// -- "CSKillIcons" for CSS, "HL2MPTypeDeath" for HL2
	SWEP.IconLetter			= "z" 							// -- Refer to a Killicon sheet
	SWEP.SelectIconLetter		= "z"
	
	
	killicon.AddFont( "weapon_fiery_minigun" , SWEP.IconFont, SWEP.IconLetter, Color(255,80,0,255))
end


--SWEP.Instructions 			= "Damage: 22% \nRecoil: 26% \nPrecision: 42% \nType: Automatic \nRate of Fire: 1000 rounds per minute"

SWEP.Base					= "weapon_fiery_base_mg"
SWEP.Category 				= "Fiery"	// -- SWEP Category
SWEP.HoldType				= "hipfire2"
SWEP.HoldType2				= "hipfire1"
SWEP.ReloadHoldType			= "smg"
SWEP.UseHands				= false

SWEP.Spawnable				= !false
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_minigun.mdl"
SWEP.WorldModel				= "models/weapons/w_minigun.mdl"
SWEP.Mag					= "models/weapons/w_mach_negev_mag.mdl"
SWEP.ReloadSound			= Sound("weapons/oicw/ar2_reload.wav")

SWEP.Primary.Sound			= Sound( "weapons/hmg1/hmg1_" .. math.random( 7, 9 ) .. ".wav" )
SWEP.Primary.Recoil			= .27
SWEP.Primary.Damage			= 22
SWEP.Primary.NumShots		= 2
SWEP.Primary.Cone			= 0.062
SWEP.Primary.ClipSize		= 385		// -- Feel free to put a higher number
SWEP.Primary.Delay			= 0.061
SWEP.Primary.Clips			= 5
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.IronSightsPos = Vector (-6.5, -17, 4.3)
SWEP.IronSightsAng = Vector (0.23, -3.12, -0.08)
