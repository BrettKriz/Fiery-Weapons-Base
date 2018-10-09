/* An extention of the base */

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Fiery SNIPER Base"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 6
	SWEP.SlotPos			= 3

	SWEP.IconLetter			= "n"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "f"
	SWEP.SelectIconFont		= "CSSelectIcons3"
	--
	killicon.AddFont( "weapon_fiery_base_sniper", SWEP.IconFont, SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Category				= "Fiery"
SWEP.Base					= "weapon_fiery_base"

SWEP.Spawnable				= false
SWEP.AdminSpawnable			= false

SWEP.HoldType				= "sniper"
SWEP.HoldType2				= "hipfire1"
SWEP.ViewModel				= "models/weapons/v_snip_awp.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_awp.mdl"

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_awp.Single" )
SWEP.Primary.Recoil			= 1
SWEP.Primary.Damage			= 45
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 5
SWEP.Primary.Delay			= 1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "SniperRound"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

/*---------------------------------------------------------
	Animation Index
---------------------------------------------------------*/
SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK

SWEP.Secondary.EmptyAnim	= ACT_VM_FIDGET
SWEP.Secondary.ShootAnim	= ACT_VM_SECONDARYATTACK

SWEP.ReloadAnim				= ACT_VM_RELOAD
SWEP.EmptyReloadAnim		= ACT_VM_RELOAD --_EMPTY

SWEP.DrawAnim				= ACT_VM_DRAW
SWEP.EmptyDrawAnim			= ACT_VM_DRAW_EMPTY

SWEP.EmpytyIdleAnim			= ACT_VM_IDLE --_EMPTY
SWEP.IdleAnim 				= ACT_VM_IDLE
/*---------------------------------------------------------*/

--[[
/*---------------------------------------------------------
	DrawHUD	
---------------------------------------------------------*/
function SWEP:DrawHUD()

	if not ( self.Weapon:GetNetworkedBool( "Ironsights" ) ) then return end

	local x = ScrW() / 2.0
	local y = ScrH() / 2.0
	local scale = 10 * self.Primary.Cone
	
	local LastShootTime = self.Weapon:GetNetworkedFloat( "LastShootTime", 0 )
	scale = scale * (2 - math.Clamp( (CurTime() - LastShootTime) * 5, 0.0, 1.0 ))
	
	surface.SetDrawColor( 0, 255, 0, 255 )
	
	local gap = 40 * scale
	local length = gap + 20 * scale
	surface.DrawLine( x - length, y, x - gap, y )
	surface.DrawLine( x + length, y, x + gap, y )
	surface.DrawLine( x, y - length, x, y - gap )
	surface.DrawLine( x, y + length, x, y + gap )

end
--]]