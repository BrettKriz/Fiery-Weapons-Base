/*=====================================*\
		NOVA PROSPEKT ~ 6/6/2016
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "FIREY TESTER 2 - MAGS"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "II"
	
	killicon.AddFont( "fiery_tester2", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base				= "weapon_fiery_base"
SWEP.Category			= "Fiery"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType2			= "csspistol"
SWEP.HoldType			= "onehand"

SWEP.ViewModelFlip		= true
SWEP.ViewModel			= "models/weapons/v_pistol.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_elite_single.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_TMP.Single" )
SWEP.Primary.Recoil			= 0
SWEP.Primary.Damage			= 18
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.04
SWEP.Primary.ClipSize		= 5
SWEP.Primary.Delay			= 0.25
SWEP.Primary.Automatic		= false

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-7, -1, 2.68)
SWEP.IronSightsAng = Vector(-0.101, -0.796, 0)

SWEP.DryFires				= true


function SWEP:ShootBullet( damage, num_bullets, aimcone )

	-- Shoot shit
	self:SpawnMag()
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	

end

function SWEP:SpawnMag(t)
	self:SafeTimer( t, self:SpawnMagProp() )
end

function SWEP:SpawnMagProp()
	local mag		= Model("models/weapons/w_pist_deagle_mag.mdl")
	
	local aim 		= self.Owner:GetAimVector()
	local side 		= aim:Cross(Vector(0,0,1))
	local up 		= side:Cross(aim)
	local pos 		= self.Owner:GetShootPos() +  (aim * 24 + side * 8 + up * -1)
	local speed		= 300
	-- bazooka_round
	local item = ents.Create("prop_physics") -- CreateClientProp
	
	if !item:IsValid() then return false end
	
	item:SetModel(mag)
	item:SetAngles(aim:Angle())
	item:SetPos(pos)
	item:SetOwner(self.Owner)
	item:SetPhysicsAttacker(self.Owner)
	item:Spawn()
	--item:Activate()
	-- Start the physics part
	
	--item:PhysicsInit( SOLID_VPHYSICS )
	local phys = item:GetPhysicsObject()  	
	if phys:IsValid() then  		
		--phys:Wake()  	
		--phys:SetMass(2)
	else
		item:Remove()
		return false
	end

	item:SetVelocity(item:GetForward() * speed)
	
	timer.Simple(120, function() -- timer.Simple EXPLICITLY!! No-safetimers!
			local ent = item
			local targ = item:EntIndex().."mag"--item:GetClass() //Give it a unique name
			ent:SetKeyValue("targetname",targ)
			
			local dissolver = ents.Create("env_entity_dissolver")
			dissolver:SetPos(Vector(0,0,0)) //Doesn't need to be in any particular position
			dissolver:SetKeyValue("target",targ)
			dissolver:SetKeyValue("magnitude",300)
			dissolver:SetKeyValue("dissolvetype",4)
			dissolver:Spawn()
			dissolver:Activate()
			dissolver:Fire("Dissolve")
		end)
	
end