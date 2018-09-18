
if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "TESTER 4\nCOLLISION"			
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "t"
	SWEP.WepSelectLetter	= "t"
	
	killicon.AddFont( "fiery_tester4", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end


SWEP.Base					= "weapon_base"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "rifle"
SWEP.ViewModel				= "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_famas.mdl"
SWEP.Mag					= "models/weapons/w_pist_elite_mag.mdl" -- "models/props_c17/TrapPropeller_Lever.mdl" 
SWEP.ViewModelFlip			= false

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.Sound			= Sound( "Weapon_famas.Single" )
SWEP.Primary.Recoil			= 0.9
SWEP.Primary.Damage			= 36
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 25
SWEP.Primary.Delay			= 0.092
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos = Vector(-6.281, -2, 1.32)
SWEP.IronSightsAng = Vector(0.2, -0.201, -2.5)

-------------------------------------
function SWEP:SecondaryAttack()

	self:DoSpawnMagazine( self.Mag, amt, self.Primary.Ammo )
	
end


function SWEP:DoSpawnMagazine(mag2, n, ammot)
			--if CLIENT then return end
			local mag		= Model( mag2 )			
			local aim 		= self.Owner:GetAimVector()
			local side 		= aim:Cross(Vector(0,0,1))
			local up 		= side:Cross(aim)
			local pos 		= self.Owner:GetShootPos() +  (aim * 24 + side * 8 + up * -10)
			local speed		= 300

			item = ents.Create("sent_magazine") -- "sent_magazine"
			
			if !item:IsValid() then return false end
			
			--item:SetModel(mag)
			--item.SetModel(mag)
			item.MODEL = mag
			item.AMOUNT = n
			item.AMMOTYPE = ammot
			
			item:SetAngles(aim:Angle())
			item:SetPos(pos)
			--item:SetOwner(self.Owner)
			item:SetPhysicsAttacker(self.Owner)
			//alt = item:SpawnFunction(self.Owner, nil, pos)
			
			item:Spawn()
			item:Activate()

			--item:PhysicsInit( SOLID_VPHYSICS )
			local phys = item:GetPhysicsObject()  	
			if not phys:IsValid() then  		
				item:Remove()
				return false
			end

			item:SetVelocity(item:GetForward() * speed)
			return item
end
