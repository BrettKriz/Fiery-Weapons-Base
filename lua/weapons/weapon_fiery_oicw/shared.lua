/* Basicly a frankenstien SWEP */


if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
	
	
end

if ( CLIENT ) then
	SWEP.PrintName			= "O.I.C.W."
	SWEP.Note				= "(CTF)"
	--SWEP.Category 			= "HL2 Realistic Weapons"
	
	SWEP.ViewModelFOV		= GetConVarNumber("cl_swep_FOV")
	SWEP.ViewModelFlip		= false
	
	SWEP.Slot				= 2
	SWEP.SlotPos			= 5
	
	SWEP.FileName 			= "weapon_fiery_OICW"
	SWEP.IconFont 			= "HLKillIcons2"
	SWEP.IconLetter			= "f"
	SWEP.SelectIconLetter	= "f"
	SWEP.SelectIconFont		= "HLSelectIcons"

	
--	surface.CreateFont("halflife2", ScreenScale(30), 500, true, true, "CSKillIcons")
	
	killicon.AddFont( SWEP.FileName, SWEP.IconFont, SWEP.IconLetter, Color(255,80,0,255))
end

/*---------------------------------------------------------
Muzzle Effect + Shell Effect
---------------------------------------------------------*/
SWEP.MuzzleEffect			= "none" -- This is an extra muzzleflash effect
-- Available muzzle effects: rg_muzzle_grenade, rg_muzzle_highcal, rg_muzzle_hmg, rg_muzzle_pistol, rg_muzzle_rifle, rg_muzzle_silenced, none

SWEP.ShellEffect			= "rg_shelleject_rifle" -- The OICW model already emits RIFLE shells.
-- Available shell eject effects: rg_shelleject, rg_shelleject_rifle, rg_shelleject_shotgun, none

SWEP.MuzzleAttachment		= "muzzle" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "1" -- Should be "2" for CSS models or "1" for hl2 models

SWEP.EjectDelay				= 0.02
/*-------------------------------------------------------*/

SWEP.Instructions 			= "Damage: 20% \nRecoil: 36% \nPrecision: 75% \nType: Automatic and Burst \nRate of Fire: 630 rounds per minute"

SWEP.Base					= "weapon_fiery_base_auto_rifle"
SWEP.Category 				= "Fiery"	// -- SWEP Category
SWEP.HoldType				= "rifle"
SWEP.HoldType2				= "hipfire2"
SWEP.UseHands				= false

SWEP.Spawnable				= !false
SWEP.AdminSpawnable			= true

SWEP.ViewModel				= "models/ctf_weapons/v_oicw.mdl"
SWEP.WorldModel				= "models/ctf_weapons/w_oicw.mdl"

SWEP.ReloadSound			= Sound("weapons/oicw/ar2_reload.wav")

SWEP.Primary.Sound			= Sound( "weapons/oicw/ar2_fire1.wav" ) --Sound( "weapons/oicw/ar2_fire3.wav" )
SWEP.Primary.Recoil			= 0.46
SWEP.Primary.Damage			= 28
SWEP.Primary.NumShots		= 1
SWEP.Primary.BurstFire		= 2
SWEP.Primary.Cone			= 0.025
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.07
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"


SWEP.Secondary.Ammo			= "SMG1_Grenade"
SWEP.Launcher				= true

SWEP.IronSightsPos = Vector(-7.261, -7.22, 4.599)
SWEP.IronSightsAng = Vector(5, 0, -5)

SWEP.FireMode				= 1 -- INDEX
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {} -- DIDO 
SWEP.data.modes[1]			= 3 -- AUTO
SWEP.data.modes[2]			= 2 -- BURST
SWEP.data.modes[3]			= 1 -- SEMI

--SWEP.data.zoomfov 			= 45
--SWEP.data.snipefov 			= 0

---------------------------
-- Scope --
---------------------------

SWEP.IronSightZoom			= 1.4 -- How much the player's FOV should zoom in ironsight mode. 
SWEP.UseScope				= true -- Use a scope instead of iron sights.
SWEP.ScopeScale 			= 0.4 -- The scale of the scope's reticle in relation to the player's screen size.
SWEP.ScopeZooms				= {2} -- The possible magnification levels of the weapon's scope.   If the scope is already activated, secondary fire will cycle through each zoom level in the table.
SWEP.DrawParabolicSights	= false -- Set to true to draw a cool parabolic sight (helps with aiming over long distances)

/*---------------------------------------------------------
Think
---------------------------------------------------------*/
function SWEP:Think2()

	if self.data.init then		
		self.data.init = nil
	end

	if self.mode == "burst" then
		if self.data.burst.Timer + self.data.burst.BurstDelay < CurTime() then
			if self.data.burst.Counter > 0 then
				self.data.burst.Counter = self.data.burst.Counter - 1
				self.data.burst.Timer = CurTime()
				
				if self:CanPrimaryAttack() then
					self.Weapon:EmitSound( Sound( "weapons/oicw/ar2_fire3.wav" ) )
					if self.Owner:GetFOV() == 0 then
						self:RecoilPower()
					else
						self:RecoilPower()
					end
					self:TakePrimaryAmmo( 1 )
				end
			end
		end
	end

	if CLIENT and self.Weapon:GetNetworkedBool("Scope") then
		self.MouseSensitivity = self.Owner:GetFOV() / 60 -- scale sensitivity
	else
		self.MouseSensitivity = 1
	end

	if not CLIENT and self.Weapon:GetNetworkedBool("Scope") and self.Owner:KeyDown(IN_ATTACK2) and (self:GetIronsights() == true) then
		self.Owner:DrawViewModel(false)
	elseif not CLIENT then
		self.Owner:DrawViewModel(true)
	end

	self:Sights()
end

/*---------------------------------------------------------
RecoilPower
---------------------------------------------------------*/
--[[
function SWEP:RecoilPower()

	if not self.Owner:IsOnGround() then
		if (self:GetIronsights() == true) then
			self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Put normal recoil when you're in ironsight mod

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * (self.Primary.Recoil), math.Rand(-1,1) * (self.Primary.Recoil), 0))
			// -- Punch the screen 1x less hard when you're in ironsigh mod
		else
			self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil * 2.5, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Recoil * 2.5

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * (self.Primary.Recoil * 2.5), math.Rand(-1,1) * (self.Primary.Recoil * 2.5), 0))
			// -- Punch the screen * 2.5
		end

	elseif self:IsOwnerMoving() then
		if (self:GetIronsights() == true) then
			self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil / 2, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Put recoil / 2 when you're in ironsight mod

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * (self.Primary.Recoil / 1.5), math.Rand(-1,1) * (self.Primary.Recoil / 1.5), 0))
			// -- Punch the screen 1.5x less hard when you're in ironsigh mod
		else
			self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil * 1.5, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Recoil * 1.5

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * (self.Primary.Recoil * 1.5), math.Rand(-1,1) * (self.Primary.Recoil * 1.5), 0))
			// -- Punch the screen * 1.5
		end

	elseif self.Owner:Crouching() then
		if (self:GetIronsights() == true) then
			self:CSShootBullet(self.Primary.Damage, 0, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Put 0 recoil when you're in ironsight mod

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * (self.Primary.Recoil / 3), math.Rand(-1,1) * (self.Primary.Recoil / 3), 0))
			// -- Punch the screen 3x less hard when you're in ironsigh mod
		else
			self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil / 2, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Recoil / 2

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * (self.Primary.Recoil / 2), math.Rand(-1,1) * (self.Primary.Recoil / 2), 0))
			// -- Punch the screen / 2
		end
	else
		if (self:GetIronsights() == true) then
			self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil / 6, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Put recoil / 4 when you're in ironsight mod

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * (self.Primary.Recoil / 2), math.Rand(-1,1) * (self.Primary.Recoil / 2), 0))
			// -- Punch the screen 2x less hard when you're in ironsigh mod
		else
			self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self.data[self.mode].Cone)
			// -- Put normal recoil when you're not in ironsight mod

			self.Owner:ViewPunch(Angle(math.Rand(-0.5,-2.5) * self.Primary.Recoil, math.Rand(-1,1) *self.Primary.Recoil, 0))
			// -- Punch the screen
		end
	end
	self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
end
--]]