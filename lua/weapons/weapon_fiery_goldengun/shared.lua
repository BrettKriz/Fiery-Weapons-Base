/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	resource.AddFile("models/weapons/v_goldengun.mdl")
	resource.AddFile("models/weapons/w_goldengun.mdl")
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Golden Gun"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Lore				= "Its made out of solid gold, wow!"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 0
	SWEP.IconLetter			= "a"
	SWEP.WepSelectLetter	= "a"
	SWEP.WepSelectFont		= "CSKillIcons"
	
	killicon.AddFont( "weapon_fiery_goldengun", SWEP.WepSelectFont, SWEP.IconLetter, Color(222,111,11) )
	
end


SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "csspistol"
SWEP.HoldType2				= "onehand"
SWEP.ViewModel				= "models/weapons/goldengun/v_goldengun.mdl"
SWEP.WorldModel				= "models/weapons/goldengun/w_goldengun.mdl"
SWEP.ViewModelFlip			= false -- Defaults true
SWEP.Weight					= 15

SWEP.Primary.Sound			= Sound( "weapons/goldengun/golden_gun_fire1.wav" )
SWEP.ReloadSound			= Sound( "weapons/common/reload1.wav" )
SWEP.Primary.Recoil			= 2
SWEP.Primary.Damage			= 1337
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.026
SWEP.Primary.ClipSize		= 10
SWEP.Primary.Delay			= 0.09
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.DryFires				= !true

SWEP.IronSightsPos = Vector(-3.961, -2, 0.519)
SWEP.IronSightsAng = Vector(0.1, 0.064, 0)