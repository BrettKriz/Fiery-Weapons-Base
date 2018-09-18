/*=====================================*\
		NOVA PROSPEKT ~ 6/6/2016
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "FIREY TESTER 3 - IDLE TEST"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "X"
	
	killicon.AddFont( "fiery_tester3", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base				= "weapon_fiery_base"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType2			= "csspistol"
SWEP.HoldType			= "onehand"

SWEP.ViewModelFlip		= true
SWEP.ViewModel			= "models/weapons/v_smg_tmp.mdl"
SWEP.WorldModel			= "models/weapons/w_smg_tmp.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_USP.Single" )
SWEP.Primary.Recoil			= 2
SWEP.Primary.Damage			= 18
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.07
SWEP.Primary.ClipSize		= 18
SWEP.Primary.Delay			= 0.25
SWEP.Primary.Automatic		= false

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-7, -1, 2.68)
SWEP.IronSightsAng = Vector(-0.101, -0.796, 0)

<<<<<<< HEAD
function SWEP:PrimaryAttack()
	local trace = self.Owner:GetEyeTrace()
	local targ = trace.Entity
	local phys = targ:GetPhysicsObject()
	if (targ == nil) then return end
	
	ErrorNoHalt("TARGET: " .. tostring(targ:GetClass()) .. " PHYS NAME: ".. tostring(phys:GetName()).. "\n\n")
	ErrorNoHalt("COLLISION GROUP: "..targ:GetCollisionGroup().."\n")
	ErrorNoHalt("COLLISION BOUNDS-MIN: "..tostring(targ:GetCollisionBounds()[1]).." MAX: "..tostring(targ:GetCollisionBounds()[2]).."\n\n")
	
	ErrorNoHalt("SOLID? "..tostring(targ:IsSolid()) .."\n")
	ErrorNoHalt("VOL: "..tostring(phys:GetVolume())  .. " - SA: " .. tostring(phys:GetSurfaceArea()) .."\n")
	ErrorNoHalt("AABB: "..tostring(phys:GetAABB()) .. "\n")
	
end
=======
SWEP.DoesIdle				= true
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
