// Coded by Nova Prospekt
// Grenade

if (SERVER) then
  
	AddCSLuaFile ("shared.lua")
	SWEP.Weight 			= 5
end

if (CLIENT) then

	SWEP.PrintName 			= "H.E. GRENADE"
	SWEP.Slot 				= 4
	SWEP.SlotPos 			= 1
	SWEP.DrawAmmo 			= true
	SWEP.DrawCrosshair 		= false
	
	SWEP.ViewModelFOV		= 62
	SWEP.ViewModelFlip		= false
	SWEP.CSMuzzleFlashes	= false

	SWEP.FileName 			= "weapon_fiery_HE_grenade" // -- What is the name of the FOLDER this is in?
	SWEP.IconFont 			= "CSKillIcons" // -- "CSKillIcons" for CSS, "HL2MPTypeDeath" for HL2
	SWEP.IconLetter			= "k"
	
	killicon.AddFont( SWEP.FileName, SWEP.IconFont, SWEP.IconLetter, Color(255,80,0,255))
end

SWEP.Primary.NumNades 			= 1 

SWEP.Base						= "weapon_fiery_base"
SWEP.Author 					= "Nova Prospekt"
SWEP.Category					= "Fiery Weapons"

SWEP.Spawnable 					= true
SWEP.AdminSpawnable 			= true

SWEP.HoldType					= "grenade"
SWEP.HoldType2					= "grenade"

SWEP.ViewModel 					= "models/weapons/v_eq_fraggrenade.mdl"
SWEP.ViewModelFlip				= true
SWEP.WorldModel 				= "models/weapons/w_eq_fraggrenade.mdl"

SWEP.Thrown						= true

SWEP.Primary.ClipSize 			= -1
SWEP.Primary.DefaultClip 		= 1
SWEP.Primary.Automatic 			= true		-- Test me
SWEP.Primary.Ammo 				= "grenade"

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Automatic 		= true
SWEP.Secondary.Ammo 			= "none"


/*---------------------------------------------------------
Holster
---------------------------------------------------------*/
function SWEP:Holster()
	self.Proned = false
	self.Throwing = false
	self.Farthrow = 0
	self.Farthrow2 = false
	self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)

return true
end

/*---------------------------------------------------------
Reload
---------------------------------------------------------*/
function SWEP:Reload() -- Drop the egg straight down?

end

/*---------------------------------------------------------
Think
---------------------------------------------------------*/
function SWEP:Think()
	self:StandardThink() -- Provide the standard thoughts of Fiery

	if self.Proned and not self.Owner:KeyDown ( IN_ATTACK) and self.Owner:KeyReleased(IN_ATTACK) then
		self.Proned = false
		self.Throwing = true
		self.Weapon:SendWeaponAnim(ACT_VM_THROW)

		if self.Farthrow <= CurTime() then self.Farthrow2 = true else self.Farthrow2 = false end
		timer.Simple( 0.35, function()
			self:ThrowFar()
		end )
	end

	if self.Proned and not self.Owner:KeyDown ( IN_ATTACK2) and self.Owner:KeyReleased(IN_ATTACK2) then
		self.Proned = false
		self.Throwing = true
		self.Weapon:SendWeaponAnim(ACT_VM_THROW)

		if self.Farthrow <= CurTime() then self.Farthrow2 = true else self.Farthrow2 = false end
		timer.Simple( 0.4, function()
			self:ThrowShort()
		end )
	end
end

/*---------------------------------------------------------
ThrowFar
---------------------------------------------------------*/
function SWEP:ThrowFar()
	if !self.Throwing then return end
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	ownerofhegrenade = self.Owner

	local tr = self.Owner:GetEyeTrace()

	if (!SERVER) then return end

	local ent = ents.Create ("npc_grenade_frag")

			local v = self.Owner:GetShootPos()
				v = v + self.Owner:GetForward() * 1
				v = v + self.Owner:GetRight() * 3
				v = v + self.Owner:GetUp() * 1
			ent:SetPos( v )
	local angs = Vector(math.random(1,100),math.random(1,100),math.random(1,100))
	--ent:SetAngles ( Vector(0,0,0) ) -- angs or
	-- ent:SetModel = "models/weapons/w_eq_fraggrenade.mdl"
	ent.SetOwner = self.Owner
	ent:Input("settimer",self.Owner,self.Owner,"4")
	ent:SetModel( self.WorldModel )
	ent:Spawn()
	
	local phys = ent:GetPhysicsObject()
	local shot_length = tr.HitPos:Length()

	if self.Owner:KeyDown( IN_FORWARD ) then
		self.Force = 3200/2.5
	elseif self.Owner:KeyDown( IN_BACK ) then
		self.Force = 2100/2.5
	elseif self.Owner:KeyDown( IN_MOVELEFT ) then
		self.Force = 2500/2.5
	elseif self.Owner:KeyDown( IN_MOVERIGHT ) then
		self.Force = 2500/2.5
	else
		self.Force = 2500/2.5
	end

	if self.Farthrow2 then self.Force = self.Force + 600 end

	phys:ApplyForceCenter(self.Owner:GetAimVector() *self.Force *1.2 + Vector(0,0,200) )
	phys:AddAngleVelocity(Vector(math.random(-500,500),math.random(-500,500),math.random(-500,500)))
	self.Primary.NumNades = self.Primary.NumNades - 1
	self.Weapon:SetNextPrimaryFire( CurTime() + 1.6 )

	timer.Simple(0.6,
	function()

	if self.Owner:GetAmmoCount(self.Primary.Ammo) == 1 then
		local owna = self.Owner
		self.Owner:RemoveAmmo(1,self.Primary.Ammo)
		owna:ConCommand("lastinv")

		elseif self.Primary.NumNades <= 0 then
			self.Owner:RemoveAmmo(1,self.Primary.Ammo)
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
			self.Proned = false
			self.Throwing = false
			self.Farthrow = 0
			self.Farthrow2 = false
		else
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
			self.Proned = false
			self.Throwing = false
			self.Farthrow = 0
			self.Farthrow2 = false
		end
	end)
end

/*---------------------------------------------------------
ThrowShort
---------------------------------------------------------*/
function SWEP:ThrowShort()
	if !self.Throwing then return end
	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	local tr = self.Owner:GetEyeTrace()

	if (!SERVER) then return end

	local ent = ents.Create ("npc_grenade_frag")

			local v = self.Owner:GetShootPos()
				v = v + self.Owner:GetForward() * 2
				v = v + self.Owner:GetRight() * 3
				v = v + self.Owner:GetUp() * -3
			ent:SetPos( v )

	--ent:SetAngles (Vector(math.random(1,100),math.random(1,100),math.random(1,100)))
	ent.SetOwner = self.Owner
	ent:Input("settimer",self.Owner,self.Owner,"4")
	ent:SetModel( self.WorldModel )
	ent:Spawn()
	local phys = ent:GetPhysicsObject()
	local shot_length = tr.HitPos:Length()

	if self.Owner:KeyDown( IN_FORWARD ) then
		self.Force = 750/2
	elseif self.Owner:KeyDown( IN_BACK ) then
		self.Force = 850/2
	elseif self.Owner:KeyDown( IN_MOVELEFT ) then
		self.Force = 650/2
	elseif self.Owner:KeyDown( IN_MOVERIGHT ) then
		self.Force = 650/2
	else
		self.Force = 700/2
	end

	if self.Farthrow2 then self.Force = self.Force + 100 end

	phys:ApplyForceCenter(self.Owner:GetAimVector() * self.Force * 1.1 + Vector(0, 0, 0))
	phys:AddAngleVelocity(Vector(math.random(-500,500),math.random(-500,500),math.random(-500,500)))
	self.Primary.NumNades = self.Primary.NumNades - 1
	self.Weapon:SetNextPrimaryFire( CurTime() + 1.6 )

	timer.Simple(0.6,
	function()

	if self.Owner:GetAmmoCount(self.Primary.Ammo) == 1 then
		local owna = self.Owner
		self.Owner:RemoveAmmo(1,self.Primary.Ammo)
		owna:ConCommand("lastinv")

		elseif self.Primary.NumNades <= 0 then
			self.Owner:RemoveAmmo(1,self.Primary.Ammo)
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
			self.Proned = false
			self.Throwing = false
			self.Farthrow = 0
			self.Farthrow2 = false
		else
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
			self.Proned = false
			self.Throwing = false
			self.Farthrow = 0
			self.Farthrow2 = false
		end
	end)
end

/*---------------------------------------------------------
PrimaryAttack
---------------------------------------------------------*/
function SWEP:PrimaryAttack()
	if self.Throwing then return end

	if !self.Proned then
		if self.Owner:KeyPressed ( IN_ATTACK2 ) then
			self.Weapon:SendWeaponAnim(ACT_VM_PULLBACK_LOW)
			-- Lob short
		elseif self.Owner:KeyPressed ( IN_ATTACK ) then
			self.Weapon:SendWeaponAnim(ACT_VM_PULLBACK_HIGH)
			-- lob high
		else
			self.Weapon:SendWeaponAnim(ACT_VM_PULLBACK)
		end
		self.Proned = true
		self.Farthrow = 2 + CurTime()
	end
end

/*---------------------------------------------------------
SecondaryAttack
---------------------------------------------------------*/
function SWEP:SecondaryAttack()
	self:PrimaryAttack() -- Shorthand
end

