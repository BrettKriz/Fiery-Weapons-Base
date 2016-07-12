/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "FIREY TESTER 1"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "X"
	
	killicon.AddFont( "fiery_tester1", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base				= "weapon_fiery_base"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType2			= "csspistol"
SWEP.HoldType			= "onehand"

SWEP.ViewModelFlip		= true
SWEP.ViewModel			= "models/weapons/beretta_M9.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_elite_single.mdl"

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

SWEP.DryFires				= true

function SWEP:PrimaryAttack()

	// Make sure we can shoot first
	if ( !self:CanPrimaryAttack() ) then return end

	timer.Simple( 0.1 , function()
		if not(self:IsValid() and self.Owner:IsValid() and self.Owner:Alive()) then return end
		self:PrimaryShootEffects() -- Get this goin to reference the animation length
	
		self:ShootBullet( 	
							self.Primary.Damage,
							self.Primary.Recoil,
							self.Primary.NumShots,
							self.Primary.Cone
						)
	end)

end
		