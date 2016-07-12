/* Duel Elites hand made by Nova Prospekt 2011-2016 */

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Fiery DUAL BASE"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 5
	SWEP.IconLetter			= "s"
	SWEP.WepFolderPath		= "weapon_fiery_base_dual"
	//					Str Name,			Str Font,	 str disp char(s)	color...
	killicon.AddFont( SWEP.WepFolderPath, "csd", SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Category				= "Fiery"
SWEP.Base					= "weapon_fiery_base"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "dual"
SWEP.HoldType2				= "dual"
SWEP.ReloadType				= "dual"

SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/v_pist_elite.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_elite.mdl"
SWEP.Weight					= 6.5


SWEP.Primary.Sound			= Sound( "Weapon_elite.Single" )
SWEP.Primary.Recoil			= 55
SWEP.Primary.Damage			= 1
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.08
SWEP.Primary.ClipSize		= 5
SWEP.Primary.Delay			= 0.05
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "alyxgun"
--[[
SWEP.Secondary.Sound		= SWEP.Primary.Sound
SWEP.Secondary.Recoil		= SWEP.Primary.Recoil
SWEP.Secondary.Damage		= SWEP.Primary.Damage
SWEP.Secondary.NumShots		= SWEP.Primary.NumShots
SWEP.Secondary.Cone			= SWEP.Primary.Cone
SWEP.Secondary.ClipSize		= SWEP.Primary.ClipSize
SWEP.Secondary.Delay		= SWEP.Primary.Delay
SWEP.Secondary.Automatic	= SWEP.Primary.Automatic
SWEP.Secondary.Ammo			= SWEP.Primary.Ammo
--]]
SWEP.DryFires				= true
SWEP.WorksUnderWater		= false
SWEP.Akimbo					= true

SWEP.ArmOffset 				= Vector (0, -7, -11.38)
SWEP.ArmAngle 				= Vector (45, 1.42, 0)
/*---------------------------------------------------------
   Name: SWEP:PrimaryAttack( )
   Desc: +attack1 has been pressed
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	// Make sure we can shoot first
	if not self:CanPrimaryAttack() then return end

	self:ShootBullet( 1, self.Primary.Damage, self.Primary.NumShots, self.Primary.Cone )

	// Punch the player's view
	--self.Owner:ViewPunch( Angle( -2, self.Primary.Recoil, 0 ) )
end

/*---------------------------------------------------------
   Name: SWEP:SecondaryAttack( )
   Desc: +attack2 has been pressed
---------------------------------------------------------*/
function SWEP:SecondaryAttack()
	-- Convert to using SWEP:FireSpare()! 
	
	// Make sure we can shoot first
	local flag = self:CanSecondaryAttack()
	--Msg (tostring(flag))
	if not flag then return end
	self:FireSpare()

end
