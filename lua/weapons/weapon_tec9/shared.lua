// Created by Nova Prospekt
// 			Tec-9

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	resource.AddFile("models/weapons/v_smg_tec-9.mdl")
	resource.AddFile("models/weapons/w_smg_tec-9.mdl")
	resource.AddFile("weapons/tec9/tec9-1.wav")
	resource.AddFile("materials/models/weapons/v_models/TecKG9/gun.vmt")
	resource.AddFile("materials/models/weapons/v_models/TecKG9/gun.vtf")
	resource.AddFile("materials/models/weapons/v_models/TecKG9/mag.vtf")
	resource.AddFile("materials/models/weapons/v_models/TecKG9/mag.vmt")
	resource.AddFile("materials/models/weapons/w_models/TecKG9/mag.vmt")
	resource.AddFile("materials/models/weapons/w_models/TecKG9/gun.vmt")
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Tec-9 Auto"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 4
	SWEP.IconLetter			= "d"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter		= "X"
	SWEP.SelectIconFont			= "CSSelectIcons"
	
	killicon.AddFont( "weapon_tec9", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.HoldType				= "smg"
SWEP.HoldType2				= "onehand"
SWEP.ReloadHoldType			= "smg"

SWEP.Base					= "weapon_fiery_base_pistol"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/v_smg_tec-9.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_tec-9.mdl"
--SWEP.WorldModel			= "models/weapons/w_pist_tec9.mdl"
SWEP.Weight					= 5.5

SWEP.Primary.Sound			= Sound( "weapons/tec9/tec9-1.wav" )
SWEP.Primary.Recoil			= 1.25
SWEP.Primary.Damage			= 21
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.028
SWEP.Primary.ClipSize		= 40
SWEP.Primary.Delay			= 0.075
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "pistol"

SWEP.WorldModelHoldFix		= true -- Fix the Model
SWEP.EmpytyIdleAnim			= ACT_VM_DRAW

SWEP.IronSightsPos 			= Vector (4.0068, -2.7631, 2.2911)
SWEP.IronSightsAng 			= Vector (0.1859, -0.0099, 0)

SWEP.DoesIdle				= true