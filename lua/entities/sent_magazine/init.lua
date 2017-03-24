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
 	 
 	local 	ent = ents.Create( self.Classname ) 
			ent:SetPos( SpawnPos ) 
			ent:Spawn() 
			ent:Activate() 
 	 
 	return ent 
 	 
 end 

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
	
end

function ENT:Use(activator,caller)
	
	if ( activator:IsPlayer() and (activator:Armor() < self.ARMORGIFT) ) then
		self.Entity:Remove()
		self.Entity:EmitSound( "items/armor_pickup.wav", 75, 60 )
		local Armor = activator:Armor()
		
		activator:SetArmor( self.ARMORGIFT )
		
	end

end

