/* Knife (test) */

if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )
	
	SWEP.HoldType			= "knife"
	
end

if ( CLIENT ) then

	SWEP.PrintName			= "Knife"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	SWEP.WepFolderPath		= "weapon_firey_knife"
	SWEP.IconFont			= "CSKillIcons"
	SWEP.IconLetter			= "j"
	SWEP.SelectIconLetter	= SWEP.IconLetter
	-- SWEP.SelectIconFont		= "CSSelectIcons"
	
	
	killicon.AddFont( SWEP.WepFolderPath, SWEP.IconFont, SWEP.IconLetter, SWEP.IconColor )
	
end

SWEP.Category				= "Firey"
SWEP.Base					= "weapon_firey_base_melee"

SWEP.Spawnable				= false
SWEP.AdminSpawnable			= false
SWEP.HoldType				= "knife"
SWEP.HoldType2				= "slam"
SWEP.ViewModel      		= "models/weapons/v_knife_t.mdl"
SWEP.WorldModel   			= "models/weapons/w_knife_ct.mdl"

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_pistol.Single" )
SWEP.Primary.Recoil			= 0.25
SWEP.Primary.Damage			= 35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.5
SWEP.Primary.ClipSize		= -1
SWEP.Primary.Delay			= 1
-- SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.MissSound 				= Sound("weapons/iceaxe/iceaxe_swing1.wav")
SWEP.WallSound 				= Sound("physics/flesh/flesh_impact_bullet3.wav")
SWEP.DeploySound			= Sound("weapons/slam/throw.wav")

SWEP.Melee					= true

SWEP.Range					= 15*(12*3)

function SWEP:AltMelee()
	self:Talk("Stab")
	return self:Stab()
end

/*---------------------------------------------------------
SecondaryAttack
---------------------------------------------------------*/
function SWEP:SecondaryAttack()
	/*
	if self.Owner:GetAmmoCount(self.Primary.Ammo) <= 1 then return end

	self.Weapon:EmitSound("weapons/iceaxe/iceaxe_swing1.wav")
	self.Weapon:SetNextPrimaryFire(CurTime() + 1)
	self.Weapon:SetNextSecondaryFire(CurTime() + 1)
	self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
	self.Owner:RemoveAmmo(1,self.Primary.Ammo)
	timer.Simple( 0.5, self.Weapon.SendWeaponAnim, self, ACT_VM_IDLE )

	if SERVER then
		local knife = ents.Create("ent_crowbar")
		knife:SetAngles(self.Owner:EyeAngles())

		if (self:GetIronsights() == false) then
			local v = self.Owner:GetShootPos()
				v = v + self.Owner:GetForward() * 5
				v = v + self.Owner:GetRight() * 9
				v = v + self.Owner:GetUp() * -5
			knife:SetPos( v )
		else
			knife:SetPos (self.Owner:EyePos() + (self.Owner:GetAimVector()))
		end

		knife:SetOwner(self.Owner)
		knife:SetPhysicsAttacker(self.Owner)
		knife:Spawn()
		knife:Activate()

		self.Owner:SetAnimation( PLAYER_ATTACK1 )

		local phys = knife:GetPhysicsObject()
		phys:SetVelocity(self.Owner:GetAimVector() * 3000)
		phys:AddAngleVelocity(Vector(0, 500, 0))
	end
	*/
end

/*---------------------------------------------------------
STAB
---------------------------------------------------------*/
function SWEP:Stab()

	local tr = {}
	tr.start = self.Owner:GetShootPos()
	tr.endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 50 )
	tr.filter = self.Owner
	tr.mask = MASK_SHOT
	local trace = util.TraceLine( tr )

	self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	if ( trace.Hit ) then

		if trace.Entity:IsPlayer() or string.find(trace.Entity:GetClass(),"npc") or string.find(trace.Entity:GetClass(),"prop_ragdoll") then
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 0
			bullet.Force  = 1
			bullet.Damage = 50
			self.Owner:FireBullets(bullet) 
			self.Weapon:EmitSound( "physics/flesh/flesh_impact_bullet" .. math.random(1, 3) .. ".wav" )
		elseif string.find(trace.Entity:GetClass(),"func_breakable_surf") then
			// GLASS
			
			
		else
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 0
			bullet.Force  = 1
			bullet.Damage = 50
			self.Owner:FireBullets(bullet) 
			self.Weapon:EmitSound( self.WallSound )		
		end
	else
		self.Weapon:EmitSound(self.MissSound,100,math.random(90,120))
		self.Weapon:SendWeaponAnim(ACT_VM_MISSCENTER)
	end
end

/*---------------------------------------------------------
Reload
---------------------------------------------------------*/
function SWEP:Reload()

	return self:AimAssist()
end
