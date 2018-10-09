/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "SG-550"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 2
	
	SWEP.IconLetter			= "o"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.SelectIconLetter	= "O"
	SWEP.SelectIconFont		= "CSSelectIcons"
	
	killicon.AddFont( "weapon_sg550", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.ViewModel				= "models/weapons/cstrike/c_snip_sg550.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_sg550.mdl"
SWEP.Mag					= "models/weapons/w_rif_sg556_mag.mdl"

SWEP.Primary.Sound			= Sound( "Weapon_sg550.Single" )
SWEP.Primary.Recoil			= 0.8
SWEP.Primary.Damage			= 43
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.005
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-7.52, -5, 1.519)
SWEP.IronSightsAng = Vector(0, 0, -4)

SWEP.Primary.BurstFire		= 3
SWEP.FireMode				= 2 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 2 -- BURST
SWEP.data.modes[3]			= 1 -- SEMI

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