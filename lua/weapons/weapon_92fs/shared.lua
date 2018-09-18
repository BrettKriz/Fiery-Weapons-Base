/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	resource.AddFile("models/weapons/v_trh_92fs.mdl")
	resource.AddFile("models/weapons/w_trh_92fs.mdl")
	resource.AddFile("weapon/M9/fire.wav")
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Beretta 92fs"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "a"
	SWEP.WepSelectLetter	= "a"
	
	killicon.AddFont( "weapon_92fs", SWEP.WepSelectFont, SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"
SWEP.ViewModel				= "models/weapons/v_trh_92fs.mdl"
SWEP.WorldModel				= "models/weapons/w_trh_92fs.mdl"
SWEP.ViewModelFlip			= false -- Defaults true

SWEP.Weight					= 4
SWEP.Primary.Sound			= Sound( "weapons/m9_beretta/fire.wav" )

SWEP.Primary.Recoil			= 1.25
SWEP.Primary.Damage			= 19
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.03
SWEP.Primary.ClipSize		= 15
SWEP.Primary.Delay			= 0.06
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"

SWEP.DryFires				= true
SWEP.EmpytyIdleAnim			= ACT_VM_DRAW

SWEP.IronSightsPos = Vector(-3.961, -2, 0.519)
SWEP.IronSightsAng = Vector(0.1, 0.064, 0)