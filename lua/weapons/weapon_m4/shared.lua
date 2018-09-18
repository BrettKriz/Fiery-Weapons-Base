/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "AR-15"		-- The old cs_base M4	
	SWEP.Author				= "Counter-Strike"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
<<<<<<< HEAD
	SWEP.Note				= "(Semi-Auto only)"
=======
	SWEP.Note				= "(Semi-auto only)"
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	SWEP.IconLetter			= "w"
	SWEP.WepFolderPath		= "weapon_m4"
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_rifle"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "rifle"
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_m4a1.mdl"
SWEP.Weight					= 7

SWEP.Primary.Sound			= Sound( "Weapon_AR2.Single" )
SWEP.Primary.Recoil			= 1.128
SWEP.Primary.Damage			= 30
SWEP.Primary.NumShots		= 1
<<<<<<< HEAD
SWEP.Primary.Cone			= 0.0182
=======
SWEP.Primary.Cone			= 0.019
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
SWEP.Primary.ClipSize		= 25
SWEP.Primary.Delay			= 0.0848
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "ar2"

SWEP.DoesIdle				= true

SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
<<<<<<< HEAD

SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 1 -- SEMI
--SWEP.data.modes[2]			= 2 -- BURST -- Sorry this was developed in the USA
=======
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 1 -- SEMI
SWEP.data.modes[2]			= 1 -- SEMI
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67

SWEP.IronSightsPos = Vector(-8.32, 0, 0.079)
SWEP.IronSightsAng = Vector(2.799, -2.901, -1.9)

SWEP.ArmOffset = Vector(0.759, -2.481, 0.079)
SWEP.ArmAngle = Vector(-9.2, -5.5, -12.7)