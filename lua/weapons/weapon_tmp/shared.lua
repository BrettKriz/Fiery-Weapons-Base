/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "TMP 9mm" -- The Idle tester
	SWEP.Author				= "Nova Prospekt"
	SWEP.Note				= "\"Tactical Machine-Pistol\"\n..The suppressor seems to be welded on..."
	SWEP.Slot				= 2
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "d"
	SWEP.WepSelectLetter	= "+"
	
	killicon.AddFont( "weapon_tmp", "CSKillIcons", SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Base					= "weapon_fiery_base_smg"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "grip"
SWEP.HoldType2				= "hipfire2" -- 
SWEP.ReloadHoldType			= "csspistol"
								-- "models/weapons/v_smg_tmp.mdl"
								-- "models/weapons/cstrike/c_smg_tmp.mdl"
SWEP.ViewModel				= "models/weapons/cstrike/c_smg_tmp.mdl"
--	SWEP.ViewModel				= "models/weapons/v_smg_tmp.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_tmp.mdl"

SWEP.Weight					= 8
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_tmp.Single" )
SWEP.Primary.Recoil			= 0.4
SWEP.Primary.Damage			= 25.35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.0391
SWEP.Primary.ClipSize		= 32
SWEP.Primary.Delay			= 0.062
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "pistol"

SWEP.DoesIdle				= true

SWEP.IronSightsPos = Vector(-7, 0, 2.5) -- Needs revisit
SWEP.IronSightsAng = Vector(0, 0, 0)


