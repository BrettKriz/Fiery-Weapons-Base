/* A shortcut base for shotguns */

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Fiery SHOTGUN Base"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 3

	SWEP.IconLetter			= "0"
	SWEP.IconFont			= "HLKillIcons"
	SWEP.SelectIconLetter	= "b"
	-- SWEP.SelectIconFont		= "HLSelectIcons"
	--
	killicon.AddFont( "weapon_fiery_base_shotgun", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "shotgun aim"
SWEP.HoldType2				= "shotgun"
SWEP.ReloadHoldType			= "shotgun"

SWEP.ViewModel				= "models/weapons/v_shot_m3super90.mdl"
SWEP.WorldModel				= "models/weapons/w_shotgun.mdl"
SWEP.Weight					= 8

SWEP.Primary.Sound			= Sound( "Weapon_shotgun.Single" )
SWEP.Primary.Recoil			= 0.5
SWEP.Primary.Damage			= 8
SWEP.Primary.NumShots		= 12
SWEP.Primary.Cone			= 0.65
SWEP.Primary.ClipSize		= 5
SWEP.Primary.Delay			= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "buckshot"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.ShotgunFunctions 		= true
SWEP.DestroyDoors			= true

/*---------------------------------------------------------
	Animation Index
---------------------------------------------------------*/
SWEP.Primary.EmptyAnim		= ACT_VM_PRIMARYATTACK
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


/*---------------------------------------------------------
	Reload does nothing
---------------------------------------------------------*/
/*
function SWEP:Reload()
	
	//if ( CLIENT ) then return end
	
	self:SetIronsights( false )
	
	// Already reloading
	if ( self.Weapon:GetNetworkedBool( "reloading", false ) ) then return end
	
	// Start reloading if we can
	if ( self.Weapon:Clip1() < self.Primary.ClipSize && self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 ) then
		
		self.Weapon:SetNetworkedBool( "reloading", true )
		self.Weapon:SetVar( "reloadtimer", CurTime() + 0.3 )
		self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
		
	end
end
*/

/*--------------------------------------------------------
   Think does nothing
---------------------------------------------------------*/
/*
function SWEP:Think()

	if ( self.Weapon:GetNetworkedBool( "reloading", false ) ) then
	
		if ( self.Weapon:GetVar( "reloadtimer", 0 ) < CurTime() ) then
			
			// Finsished reload -
			if ( self.Weapon:Clip1() < self.Primary.ClipSize ) or ( self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 ) then
			
				self.Weapon:SetNetworkedBool( "reloading", false )
				return
			end
			
			// Next cycle
			self.Weapon:SetVar( "reloadtimer", CurTime() + 0.3 )
			self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
			
			// Add ammo
			self.Owner:RemoveAmmo( 1, self.Primary.Ammo, false )
			self.Weapon:SetClip1(  self.Weapon:Clip1() + 1 )
			
			// Finish filling, final pump
			if ( self.Weapon:Clip1() < self.Primary.ClipSize ) or ( self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 ) then
				self.Weapon:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
			else
			
			end
			
		end
	
	end

end

*/