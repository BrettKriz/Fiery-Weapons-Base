/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "OTs-33 Pernach"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "y"
	SWEP.WepSelectLetter	= "y"
	SWEP.WepFolderPath		= "weapon_pernach"
	
	killicon.AddFont( SWEP.WepFolderPath, "CSKillIcons", SWEP.IconLetter, SWEP.IconColor )
	
end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"

SWEP.ViewModel				= "models/weapons/v_pist_ot33pemac.mdl"
SWEP.ViewModelFlip			= true
SWEP.WorldModel				= "models/weapons/w_pist_ot33pemac.mdl"
SWEP.Weight					= 4

<<<<<<< HEAD
SWEP.Primary.Sound			= Sound( "weapons/ot33/fiveseven-1.wav" )
=======
SWEP.Primary.Sound			= Sound( "weapons/pistol_ots33/ots33_fire1.wav" )
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
SWEP.Primary.Recoil			= 0.91
SWEP.Primary.Damage			= 19
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.039
SWEP.Primary.ClipSize		= 18
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357" -- above a .357 is a .357

--							LEFT/RIGHT IN/OUT UP/DOWN			
SWEP.IronSightsPos = Vector(3.819, -2.412, 0.602)
SWEP.IronSightsAng = Vector(2.813, -0.201, 0)

SWEP.DryFires				= true 
-- Unlock Dry Fire, But thats a bad animation on the default model
-- SO, if your using a model other than stock, turn this on!!
--SWEP.Range = 25