/* An extention of the base */

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
	
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Fiery SMG Base"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 4
	SWEP.IconLetter			= "!"
	SWEP.WepSelectLetter	= "!!"
	SWEP.WepSelectFont		= "hl2mp"
	SWEP.WepFolderPath		= "weapon_fiery_base_SMG"
	
	killicon.AddFont( SWEP.WepFolderPath, SWEP.WepSelectFont, SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Category				= "Fiery"
SWEP.Base					= "weapon_fiery_base"

SWEP.Spawnable				= false
SWEP.AdminSpawnable			= false
SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.ReloadHoldType			= "smg"
SWEP.ViewModel				= "models/weapons/v_smg_tmp.mdl"
SWEP.WorldModel				= "models/weapons/w_smg1.mdl"

SWEP.Weight					= 4
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_smg1.Single" )
SWEP.Primary.Recoil			= 0
SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 1
SWEP.Primary.BurstFire		= 3
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 0
SWEP.Primary.Delay			= 1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "smg1"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 1 -- SEMI
--SWEP.data.modes[3]			= 2 -- BURST

/*---------------------------------------------------------
	Animation Index
---------------------------------------------------------*/
<<<<<<< HEAD
SWEP.Primary.EmptyAnim		= ACT_VM_PRIMARYATTACK
=======
SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK

SWEP.Secondary.EmptyAnim	= ACT_VM_FIDGET
SWEP.Secondary.ShootAnim	= ACT_VM_SECONDARYATTACK

SWEP.ReloadAnim				= ACT_VM_RELOAD
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD

SWEP.DrawAnim				= ACT_VM_DRAW
SWEP.EmptyDrawAnim			= ACT_VM_DRAW

SWEP.EmpytyIdleAnim			= ACT_VM_IDLE
SWEP.IdleAnim 				= ACT_VM_IDLE
/*---------------------------------------------------------*/