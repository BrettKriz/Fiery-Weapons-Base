/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
\*=====================================*/

if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "FIREY TESTER 1\nFire Modes"
	SWEP.Author				= "Nova Prospekt"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	SWEP.IconLetter			= "X"
	SWEP.ViewModelFOV		= 90
	
	killicon.AddFont( "fiery_tester1", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
end

SWEP.Base					= "weapon_fiery_base_rifle"
SWEP.Category				= "Fiery"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.HoldType2				= "rifle"
SWEP.HoldType				= "hipfire1"

SWEP.ViewModel				= "models/weapons/v_mp44.mdl"
SWEP.WorldModel				= "models/weapons/w_mp44.mdl"
SWEP.ViewModelFlip			= false
--SWEP.ViewModelFOV			= 72

SWEP.Weight					= 7

SWEP.Primary.Sound			= Sound( "Weapon_mp44.Shoot" )
SWEP.Primary.Recoil			= 1
SWEP.Primary.Damage			= 20
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.04
SWEP.Primary.ClipSize		= 30+0 // AA mag is 40
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Automatic		= true
SWEP.Primary.BurstFire 		= 3


SWEP.DryFires				= true


SWEP.FireMode				= 1
SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {}
-- NOTE: Index does not reflect ints value
-- This is done so that the ordering can be
-- Arranged as wanted
SWEP.data.modes[1]			= 1 -- SEMI
SWEP.data.modes[2]			= 2 -- BURST
SWEP.data.modes[3]			= 3 -- AUTO
--SWEP.FireModes				= {} 	-- {1,1,2,3} -- As in, ON 1 of options 1,2,3; 1 and 1 will just be whatever; 3 and 1 will initially have it on that setting
--SWEP.FireModes				= {1, 2}
SWEP.WorldModelHoldFix		= true -- Fix the Model

SWEP.IronSightsPos = Vector(2.839, 0, 1.639)
SWEP.IronSightsAng = Vector(0.3, -1.201, 0)

SWEP.EmptyReloadAnim		= ACT_VM_RELOAD
SWEP.DryFires				= true

-- ACT_VM_RELOAD_SILENCED 
-- self.Weapon:SetNetworkedBool("reloading", true)

function SWEP:DoFireModes()
	-- self.FireModes
	if not self:CanSecondaryAttack() then return false end
	
	local i = self.FireMode + 1
	local m = -1
	if i > #self.data.modes then
		i = 1
	end
	self.FireMode = self.data.modes[i]
	m = self.FireMode -- copy the value
	
	
	--if (self.Primary.Automatic == false) then
	if (m == 1) then
		
		self.Primary.Automatic = false
		if (self.Owner) then
			self.Weapon:EmitSound("weapons/smg1/switch_single.wav")
			self.Weapon:SendWeaponAnim( ACT_VM_DEPLOY ) 
			self:Talk(self.SwitchModeMsg or "Semi")
		end
	elseif (m == 2) then
		// Burst
		self.Primary.Automatic = false
		if (self.Owner) then
			--self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
			--self.Weapon:EmitSound("weapons/alyxgun/alyx_gun_switch_burst.wav")
			self.Weapon:EmitSound("weapons/awp/awp_bolt.wav")
			self.Weapon:SendWeaponAnim( ACT_VM_UNDEPLOY ) 
			self:Talk(self.SwitchModeMsg or "Burst")
		end
	elseif (m == 3)  then
		self.Primary.Automatic = true
		if (self.Owner) then
			self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
			self.Weapon:SendWeaponAnim( ACT_VM_UNDEPLOY ) 
			self:Talk(self.SwitchSingleMsg or "Auto")
		end
	else
		ErrorNoHalt("[!] Ms value failed - M: "..tostring(m).."\t i: "..tostring(i).." "..tostring(self.data.modes[i]).."\n")
	end
	
	local t	= self:GetSeqDur()*0.925
	self.Weapon:SetNextPrimaryFire( CurTime() + t )
	self.Weapon:SetNextSecondaryFire( CurTime() + t )
	self.Weapon:SetNetworkedBool("reloading", true)
	self:SafeTimer( t, function()
				-- Hmm
				self.Weapon:SetNetworkedBool("reloading", false)
				self:DebugTalk("<> I can do stuff now @@@ Implement me!\n")
			end)
	-- Add burst setting here!\
	return true
end


/*---------------------------------------------------------
	PrimaryAttack
---------------------------------------------------------*/
/*
function SWEP:PrimaryAttack()
	--local ar = not(self.Akimbo) and (self.Weapon:Clip1() <= 0) and (self.Primary.ClipSize > 0) and (self:Ammo1() > 0)
	local b1, target = self:CanPrimaryAttack()
	local arg1 = ( not b1 or self.Weapon:GetNetworkedBool( "reloading", false) == true)
	if arg1 or self.Owner:KeyDown( IN_RELOAD ) then return end

	self.Weapon:SetVar("AkimboSide", false) -- @@@ Implement xor Remove
	
	local b2 = target ~= nil and target:GetPos():Distance( self.Owner:GetShootPos() ) < 30 -- @@@ Make sv_var!
	local doMod = (not(self.Owner:IsNPC()) -- Create a very clear key pattern 
		and self.Owner:KeyDown( IN_ATTACK ) 
		and self.Owner:KeyPressed( IN_ATTACK2 )
		and not self.Owner:KeyDown( IN_ATTACK2 ))

	if doMod  then
		
		if self:HasModify() and self:CanSecondaryAttack() then
			self:Modify() -- USE MODIFYER
			self.Weapon:SetNextSecondaryFire( CurTime() + 0.02 ) -- SET UP INDIVIDUAL VALUE FOR THIS!!! Not just Secondary attack
			return true
		elseif self.Akimbo and (self.Primary.ClipSize > 0) and( self.Weapon:Clip1() == 0) then -- lol
				self:Reload()	
			return true
		end
	elseif b2 then
		-- The target is close and right infront of us
		-- So lets do some damage 
		
		self:AimAssist(target)
	end
		
	-- FIRE PARAMS
	if self.Primary.BurstFire > 0 then
		-- They've called for Burst Only functions
		self:DebugTalk("Entering Primary Burstfire")
		self:PrimaryBurst(self.Primary.BurstFire)
		return true

	elseif not(self.Weapon:Clip1() <= 0 and self.Primary.ClipSize > 0) and self.Weapon:GetNetworkedBool( "reloading", false ) == false then
		
		--self:PrimaryShootEffects() -- Get this goin to reference the animation length
		--OBSOLEET --self:CSShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self.Primary.Cone )
		
		local b1 = not (GetConVar("swep_physical_bullets"):GetBool())
		local b2 = not self.Primary.DelayShots == true
		local anim = true
		if self.Weapon:Clip1()-1 < 1 then
			anim = self.Primary.EmptyAnim or true
		else
			anim = self.Primary.ShootAnim or true
		end

		if b1 and b2 then -- @@@See why the ConVar is messing up
			
			self:ShootBullet( 	1,
								self.Primary.Damage,
								self.Primary.Recoil,
								self.Primary.NumShots,
								self.Primary.Cone,
								self.Primary.Ammo,
								anim
							) -- @@@ Add Forced Anim?
		elseif not b1 and b2 then
			self:ShootPhysicalBullet(
										self.Primary.Damage,
										self.Primary.Recoil,
										self.Primary.NumShots,
										self.Primary.Cone
									)
		elseif not b2 then
			 -- IMPLEMENT!  
			self:PrimaryDelayShot()
		else
			ErrorNoHalt("[!] Case-Leak in SWEP:PrimaryAttack()! @@@PA1")
		end

		self.Weapon:SetNetworkedBool( "reloading", false )
		return true
	--elseif (self.Weapon:GetNetworkedBool( "reloading", false )) then
		--self.Weapon:SetNetworkedBool( "reloading", true )
		--return false
	elseif self:IsMelee() then -- @@@FFFF
		-- Stab or whatever
		self:AltMelee()
	else
		self.Weapon:SetNetworkedBool( "reloading", false )
		return false
	end
end
*/
/*---------------------------------------------------------
   Name: SWEP:SecondaryAttack( )
   Desc: +attack2 has been pressed
---------------------------------------------------------*/
function SWEP:SecondaryAttack()

	if (self.Owner:KeyDown( IN_USE ) and not self.Owner:KeyReleased( IN_USE ) ) then
	-- Important counter intuitive call!
		self:DoFireModes()
		
	else
		bIronsights = !self.Weapon:GetNetworkedBool( "Ironsights", false )
		self:SetIronsights( bIronsights )
	end
end
