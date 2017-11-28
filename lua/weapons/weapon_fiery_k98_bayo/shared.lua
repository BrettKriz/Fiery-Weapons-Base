/* Smod models are so fucked up... */

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
	
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "K98 BAYONET"
	--SWEP.Category 			= "HL2 Realistic Weapons"
	
	--SWEP.ViewModelFOV		= 82
	SWEP.ViewModelFlip		= false
	
	SWEP.Slot				= 3
	SWEP.SlotPos			= 4
	
	SWEP.FileName 			= "weapon_fiery_kar98_bayo"
	SWEP.IconFont 			= "CSKillIcons"
	SWEP.IconLetter			= ")"
	SWEP.WeaponSelectIconLetter		= "g"
	
	
	killicon.AddFont( SWEP.FileName, SWEP.IconFont, SWEP.IconLetter, Color(255,80,0,255))
end
/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/
SWEP.MuzzleEffect			= "rg_muzzle_highcal" -- This is an extra muzzleflash effect
-- Available muzzle effects: rg_muzzle_grenade, rg_muzzle_highcal, rg_muzzle_hmg, rg_muzzle_pistol, rg_muzzle_rifle, rg_muzzle_silenced, none

SWEP.ShellEffect			= "rg_shelleject_rifle" -- This is a shell ejection effect
-- Available shell eject effects: rg_shelleject, rg_shelleject_rifle, rg_shelleject_shotgun, none

SWEP.MuzzleAttachment		= "1" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" -- Should be "2" for CSS models or "1" for hl2 models

SWEP.EjectDelay			= 0.7
/*-------------------------------------------------------*/

SWEP.Instructions 			= "Damage: 72% \nRecoil: 74% \nPrecision: 92% \nType: Bolt Action"

SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category 				= "Fiery"	// -- SWEP Category

SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire1"
SWEP.UseHands				= false

SWEP.Spawnable				= !false
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/weapons/v_kar98.mdl"
SWEP.WorldModel				= "models/weapons/w_kar98.mdl"

SWEP.Weight					= 7

SWEP.Primary.Sound			= Sound( "smod_weapons/k98/kar_shoot_full.wav" )
SWEP.Primary.DryFireSound	= Sound( "smod_weapons/k98/kar_shoot.wav" )
SWEP.ReloadSound			= Sound( "smod_weapons/k98/kar_magrel.wav" )

SWEP.Primary.Recoil			= 5.4
SWEP.Primary.Damage			= 72
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.007
SWEP.Primary.ClipSize		= 5
SWEP.Primary.Delay			= 2.4
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "ar2"

SWEP.DryFires				= true

SWEP.Melee					= true  -- Uses melee modifier

SWEP.IronSightsPos = Vector (-4, 3, 2.25)
SWEP.IronSightsAng = Vector (-2.6086, 0.13, 0)

SWEP.ArmOffset = Vector (0.85, 5, 3.5)
SWEP.ArmAngle = Vector (-17, 28, 2)

function SWEP:AltMelee()
	return self:Bayonet()
end

/*---------------------------------------------------------
Bayonet
---------------------------------------------------------*/
function SWEP:Bayonet()

	if self:IsRunning() then return false end
	local dmg = 67
	
	local tr = {}
	
	tr.start 		= self.Owner:GetShootPos()
	tr.endpos 		= self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 80 )
	tr.filter 		= self.Owner
	tr.mask 		= MASK_SHOT
	
	local trace = util.TraceLine( tr )
	
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	self.Weapon:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Weapon:SequenceDuration())
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Weapon:SequenceDuration())
	
	if ( trace.Hit ) then
		bullet = {}
		bullet.Num    = 8
		bullet.Src    = self.Owner:GetShootPos()
		bullet.Dir    = self.Owner:GetAimVector()
		bullet.Spread = Vector(0.2, 0.2, 0)
		bullet.Tracer = 0
		bullet.Force  = math.sqrt(dmg)
		bullet.Damage = dmg
		self.Owner:FireBullets(bullet) 
		self.Weapon:EmitSound("physics/flesh/flesh_impact_bullet" .. math.random( 3, 5 ) .. ".wav")
	else
		// You missed...
		self.Weapon:EmitSound("weapons/ar_melee")
	end
	return true
end
