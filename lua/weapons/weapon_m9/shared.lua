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

	SWEP.PrintName			= "Beretta M9"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "a"
	SWEP.WepSelectLetter	= "a"
	
	killicon.AddFont( "weapon_m9", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"
SWEP.ViewModel				= "models/weapons/v_pist_beretta.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_elite_single.mdl"
SWEP.ViewModelFlip			= !false -- Defaults true

SWEP.Weight					= 4

SWEP.Primary.Sound			= Sound( "weapons/m9_beretta/fire.wav" )
SWEP.Primary.Recoil			= 1.3
SWEP.Primary.Damage			= 20
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.025
SWEP.Primary.ClipSize		= 15
SWEP.Primary.Delay			= 0.055
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.DryFires				= true
/*
SWEP.IronSightsPos = Vector(-3.961, -2, 0.519)
SWEP.IronSightsAng = Vector(0.1, 0.064, 0)
*/
SWEP.IronSightsPos = Vector(4.36, 0, 2.319)
SWEP.IronSightsAng = Vector(0.1, 0.1, 0)

SWEP.Primary.EmptyAnim			= ACT_VM_DRYFIRE