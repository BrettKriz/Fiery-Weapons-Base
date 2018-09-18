<<<<<<< HEAD
/* Fiery Magazine Sent */
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.MODEL 				= "models/props_c17/TrapPropeller_Lever.mdl" 

ENT.MASS				= 3

function ENT:Initialize()	

	local cg = COLLISION_GROUP_WEAPON
	local sg = SOLID_VPHYSICS

	self:SetModel( Model(self.MODEL) )	--self:SetModel( Model("models/props_c17/TrapPropeller_Lever.mdl") )
	self:SetMoveType(MOVETYPE_VPHYSICS) -- FINE
	self:SetSolid(sg)
	self:SetCollisionGroup( cg ) 
	-- 

	if SERVER then
		self:PhysicsInit(SOLID_VPHYSICS) -- FINE
	end
	
	local phys = self:GetPhysicsObject()  	
	if phys:IsValid() then 
		if( self.MASS )then	
			phys:SetMass( self.MASS )
		end 		
		phys:Wake()
	end
	
	self:DrawShadow(false)
	-- COLLISION_GROUP_NONE 
	-- COLLISION_GROUP_WEAPON
	-- COLLISION_GROUP_WORLD
	-- COLLISION_GROUP_INTERACTIVE_DEBRIS
	
	if SERVER then
		self:SetUseType( SIMPLE_USE )
	end

	--self:DebugTalk("\n\t COLLISION GROUP #: " .. self:GetCollisionGroup() .. "\n\tEXPECTED: " .. cg .. "\n")
	--self:DebugTalk("\n\t SOLID GROUP #: " .. self:GetSolid()  .. "\n\tEXPECTED: " .. sg .. "\n")
	--self:DebugTalk("\n\t SOLID FLAGS #: " .. self:GetSolidFlags().. "\n") -- .. "\n\tEXPECTED: " .. sg ..
	--self:DebugTalk("\n\t COLLISION BOUNDS: ".. tostring(self:GetCollisionBounds()).."\n")
	
	return self.Entity
end

function ENT:SpawnFunction( ply, tr, pos) -- pos, ang, mag, n, ammot
   
 	if (tr != nil and not tr.Hit ) then return end 
 	 
 	local SpawnPos
	if tr == nil then
		SpawnPos = pos
	else
		SpawnPos = tr.HitPos + tr.HitNormal * 16 
	end
=======
/* Fiery Kevlar Vest */
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.MODEL 			= "models/weapons/armor/armor.mdl"
ENT.AMMOTYPE		= "pistol"
ENT.AMOUNT			= 1 
-- Otherwise I think were just going to make a gib
-- Because optimizations

function ENT:SpawnFunction( ply, tr ) 
   
 	if ( !tr.Hit ) then return end 
 	 
 	local SpawnPos = tr.HitPos + tr.HitNormal * 16 
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
 	 
 	local 	ent = ents.Create( self.Classname ) 
			ent:SetPos( SpawnPos ) 
			ent:Spawn() 
			ent:Activate() 
<<<<<<< HEAD
 	 ErrorNoHalt("\n\nPICKUP DATA1 - AMMO: " .. tostring(ammot) .. " x".. tostring(n) .."\n")
	ErrorNoHalt("PICKUP DATA2 - AMMO: " .. self.AMMOTYPE.. " x"..self.AMOUNT.."\n\n")
		
=======
 	 
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
 	return ent 
 	 
 end 

<<<<<<< HEAD
function ENT:PhysicsCollide( data, phys )
	
	local ent = data.HitEntity
	if (ent:IsWorld()) then return end
	
	--if ent:IsPlayer() then
		-- Make a sound?
	--end
=======
function ENT:Initialize()	

	self:SetModel( self.MODEL )
	
	self:PhysicsInit( SOLID_VPHYSICS )

	local phys = self:GetPhysicsObject()  	
	if phys:IsValid() then  		
		phys:Wake()  	
	end
	
	if( self.MASS )then
		self.Entity:GetPhysicsObject():SetMass( self.MASS );
	end
	
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
end

function ENT:Use(activator,caller)
	
<<<<<<< HEAD
	if activator:IsPlayer() then
		
		self.Entity:EmitSound( "items/ammo_pickup.wav" ) -- No sound option?
		self.Entity:Remove()
		
		--self:DebugTalk("PICKUP DATA - AMMO: " .. tostring(self.AMMOTYPE).. " x"..tostring(self.AMOUNT).."\n\n")
		
		activator:GiveAmmo( self.AMOUNT, self.AMMOTYPE )
=======
	if ( activator:IsPlayer() and (activator:Armor() < self.ARMORGIFT) ) then
		self.Entity:Remove()
		self.Entity:EmitSound( "items/armor_pickup.wav", 75, 60 )
		local Armor = activator:Armor()
		
		activator:SetArmor( self.ARMORGIFT )
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
		
	end

end
<<<<<<< HEAD
=======

>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
