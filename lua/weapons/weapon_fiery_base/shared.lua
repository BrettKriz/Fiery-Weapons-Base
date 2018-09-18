/*=====================================*\
		NOVA PROSPEKT ~ 3/20/2014
			Fiery Weapons Base
				Base Weapon
				  Shared
\*=====================================*/
	-- ErrorNoHalt( "<Loading...> SHARED \n" )
	-- Needed
	IncludeCS( "sh_anim.lua" )
	IncludeCS( "animations.lua" )
	IncludeCS( "ai_translations.lua" )
	-- Extras
	IncludeCS( "physics.lua" )
	IncludeCS( "aim_assist.lua" )
	--
	
 
if ( SERVER ) then

	AddCSLuaFile( "shared.lua" )

	-- Change between here and init  
<<<<<<< HEAD
	SWEP.Weight				= 3 -- CONVERT FOR THE BETTER?
=======
	SWEP.Weight				= 5 -- CONVERT FOR THE BETTER?
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	SWEP.AutoSwitchTo		= false
	SWEP.AutoSwitchFrom		= false
	
	--CreateConVar("cl_holdtype", "357", {CLIENTCMD_CAN_EXECUTE, NOTIFY}) or "357"

end
	
if ( CLIENT ) then
	
	SWEP.Author					= "Nova Prospekt"
	SWEP.PrintName				= "~ Firey Weapons Base ~\nNot for use!"
	SWEP.Contact				= "FacePunch: Nova Prospekt"
	SWEP.Purpose				= ""
	SWEP.Instructions			= "~ ~"
	
	SWEP.DrawAmmo				= true
	SWEP.DrawCrosshair			= false
	SWEP.ViewModelFOV			= GetConVarNumber("cl_swep_FOV")
	-- Out of 100% visable; 
	-- 55 Is very close, 
	-- 80 shows arms on a majority of models
	
	SWEP.CSMuzzleFlashes		= true
	SWEP.CSMuzzleX				= false
	SWEP.WepFolderPath			= "NOT SET! \n Add SWEP.WepFolderPath = to file!" -- OBSOLEET?
	/*
	SWEP.IconLetter			= "[]"
	SWEP.WepSelectLetter	= SWEP.IconLetter
	*/
	-- KILL ICON FONTS --
	surface.CreateFont("CSKillIcons", {
		font = "csd", 
		size = ScreenScale(30), 
		weight = 500
	})
	
	surface.CreateFont("DODKillIcons", {
		font = "dodlogo", 
		size = ScreenScale(30), 
		weight = 500
	})

	surface.CreateFont("HLKillIcons", {
		font = "hl2mp", 
		size = ScreenScale(30), 
		weight = 500
	})
	-- SELECT ICON FONTS --
	surface.CreateFont("DODSelectIcons", {
		font = "dodlogo", 
		size = ScreenScale(60), 
		weight = 500
	})
	
	surface.CreateFont("CSSelectIcons", {
		font = "cstrike", 
		size = ScreenScale(60), 
		weight = 500
	})
	
	surface.CreateFont("HLSelectIcons", {
		font = "hl2mp", 
		size = ScreenScale(60), 
		weight = 500
	})

	-- Now that we've defined these fonts...
	-- We can render killicons and draw icons
	-- From the information provided
	
end

SWEP.IconColor				= Color( 255, 120, 45, 120 )
SWEP.WepSelectFont 			= "csd" -- Needs to be shared ;D

--SWEP.Category 				= "Fiery-CS Hybrid"
SWEP.Base					= "weapon_cs_base" -- MUST STABALIZE!!!!
SWEP.Category 				= "Fiery"
SWEP.DEBUG					= CreateConVar("swep_DEBUGing", "0", {FCVAR_CHEAT, FCVAR_NOTIFY}, "Toggle self.DEBUGing for Fiery SWEPs: 1=Y, 0=N")  
SWEP.Spawnable				= false
SWEP.AdminSpawnable			= true

SWEP.HoldType				= "rifle"		-- Sights
SWEP.HoldType2				= "hipfire2"	-- Hipfire
SWEP.ReloadHoldType			= nil			-- for more excentric reloads
SWEP.RunHoldType 			= nil

SWEP.DrawSound				= nil
SWEP.Primary.ChamberSound	= nil
SWEP.ReloadSound			= "" -- or a Sound("****.***") 

SWEP.ViewModel				= "models/weapons/v_irifle.mdl" -- "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.ViewModelFlip			= false -- Now a global for simplicity
SWEP.WorldModelHoldFix		= false
SWEP.WorldModel				= "models/weapons/w_rif_ak47.mdl"

-- PRIMARY
SWEP.Primary.IsPrimary		= true
SWEP.Primary.IsSecondary	= false
SWEP.Primary.Side			= "Primary"

SWEP.Primary.Sound			= Sound( "Weapon_AK47.Single" )
SWEP.Primary.SuppressedSound = Sound( "Weapon_M4.Silenced" )

SWEP.Primary.Recoil			= 1.5
SWEP.Primary.Damage			= 40
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.Delay			= 0.15

SWEP.Primary.ClipSize		= -1
SWEP.Primary.Clips			= 1
SWEP.Primary.DefaultClip 	= math.max( SWEP.Primary.ClipSize * SWEP.Primary.Clips, 0 ) -- Okay I lied, its not totally Obsoleet!
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "pistol"

SWEP.Primary.PBR			= 1		-- PLay Back Rate of Primary Anim
SWEP.Primary.BurstFire		= 0		-- A number of shots
SWEP.Primary.DryFireSound	= nil   -- WIll be SWEP.Primary.Sound
SWEP.Primary.Chambered		= true
SWEP.Primary.Chambering		= false
SWEP.Primary.Ignite			= false
SWEP.Primary.Power			= 3500
SWEP.Primary.DelayShots		= false
SWEP.Primary.DryMagEject	= false
-- SECONDARY
SWEP.Secondary.IsPrimary	= false
SWEP.Secondary.IsSecondary	= true
SWEP.Secondary.Side			= "Secondary"

SWEP.Secondary.Sound		= "weapons/grenade_launcher1.wav" -- Because grenade launching uses this ;D
SWEP.Secondary.Reload		= nil -- @@Invesitigate secondaries with independant reload
SWEP.Secondary.Recoil		= 1.5
SWEP.Secondary.Damage		= 5
SWEP.Secondary.NumShots		= 0
SWEP.Secondary.Cone			= 0.05
SWEP.Secondary.Delay		= 0.06 -- This is used for AimAssist (rather than a think function b/c optimization)

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.Clips		= 1
SWEP.Secondary.DefaultClip	= math.max(SWEP.Secondary.ClipSize*math.max(SWEP.Secondary.Clips,1), -1)
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.Secondary.PBR			= 1
SWEP.Secondary.DryFireSound	= nil -- See Dual base for this
SWEP.Secondary.Chambered	= nil
SWEP.Secondary.Chambering	= false
SWEP.Secondary.Ignite		= false
SWEP.Secondary.Power		= 3500
SWEP.Secondary.DelayShots	= false
SWEP.Secondary.DryMagEject	= false

SWEP.Range						= 55 *(12*3) -- Yards
---------------------------------
-- Function Toggles-------------- 
SWEP.ForceModifier			= nil
SWEP.Akimbo					= false -- {} something
SWEP.DoesIdle				= !false -- Enables Idle animations, @@@ASSERT_WORKING
SWEP.UseHands				= true  -- Projects player model specific hands onto a C_model 
SWEP.ShotgunFunctions		= false -- Enables Shotgun code paths (Dominant layer for paths)
SWEP.Chambers				= false -- {false} -- Meta value for having a chambering weapons
SWEP.DoDModelFunction		= false -- Used to enable DoD:S specific animation patterns
SWEP.DoDWeaponDraw			= false -- Enforces DoD:S drawing methods. Note: The font for DoD:S is VERY limited!!
SWEP.HL2WeaponDraw			= false -- Enforces HL2 drawing methods.
										-- can be {true} to be pre-chambered
SWEP.FireMode				= false		-- Fire mode data
SWEP.DryFires				= false --((SWEP.Primary.Ammo == "pistol") or (SWEP.Primary.Ammo == "357") or (SWEP.Primary.Ammo == "alyxgun"))  -- Evaluates for a bool
SWEP.WorksUnderWater		= false  -- BOOL Just to make it fancy, its as easy as that
-- Modify toggles----------------
SWEP.Scope					= false -- {0.00} -- Not sure, ill work it out later
SWEP.ScopeMAX				= 12 -- Adjust at will, no negative numbers!
SWEP.Suppressor				= nil 	-- {false} -- Booled on and off
SWEP.SuppressedVolume		= 45	-- Sound level in game, the LOUDEST it can be

SWEP.Bipod					= nil 	-- {false} -- Booled on and off
SWEP.Melee					= nil	-- If clip is 0 then melee will be primary
SWEP.Launcher				= false -- or info table -- Might just be true or false
SWEP.DoubleShot				= false -- Enables double shot function, possible @@@Trinary
SWEP.HMG					= false -- {0} -- Activating this will cause heat to activate too (?) @@@EDIT
SWEP.Heat					= nil	-- 00 -- Winds up
---------------------------------

SWEP.data 					= {} -- VERY IMPORTANT
SWEP.data.modes				= {}
-- NOTE: Index does not reflect ints value
-- This is done so that the ordering can be
-- Arranged as desired
/*
SWEP.data.modes[1]			= 1 -- SEMI
SWEP.data.modes[2]			= 2 -- BURST
SWEP.data.modes[3]			= 3 -- AUTO
*/

/*---------------------------------------------------------
	Animation Index
---------------------------------------------------------*/
-- Normal animations found in MOST pistols and some rifles
SWEP.Primary.ShootAnim		= nil
SWEP.Primary.EmptyAnim		= nil
-- If the weapon should be held like a shotgun when not in iron sight
-- If the held animation is crossbow, then it will be held like an AR2
SWEP.Secondary.EmptyAnim	= nil			 // No dryfire anims for secondary attacks(normally)
SWEP.Secondary.ShootAnim	= nil // Melee, Special action, Secondary fire
-- Abnormal reload, as in HL2 and DODS style pistol reloads
SWEP.ReloadAnim				= nil
SWEP.EmptyReloadAnim		= nil
SWEP.RemoveMagAnim			= nil
-- Once agian, Abnormal as defined above
SWEP.DrawAnim				= nil
SWEP.EmptyDrawAnim			= nil
-- Most Pistol, rifle, and shotgun models have these animations... Because VALVe modelers are smart!lol
SWEP.EmpytyIdleAnim			= nil
SWEP.IdleAnim 				= nil
-- Some weapons have animations which can accomidate the inability to attack
SWEP.Primary.CantAttack		= nil
SWEP.Secondary.CantAttack	= nil

SWEP.Primary.Chamber		= ACT_VM_DRAW


/*---------------------------------------------------------*/

-- Misc
SWEP.BoneScalers = Vector(0.009,0.009,0.009)
SWEP.ToggleBoneMod = false
SWEP.InSpeed = false
SWEP.NextSecondaryAttack = 0 -- Keep 0

--SWEP.ArmOffset = Vector (0.85, -6.6, 3.5) -- This is so there is a decent default run angle
--SWEP.ArmAngle = Vector (-13, 28, 2) 		-- Im not sure how people will like these run angles


--CreateClientConVar( "swep_x", 0.009, true, true )
--CreateClientConVar( "swep_y", 0.009, true, true )
--CreateClientConVar( "swep_z", 0.009, true, true )
--Vector(GetConVarNumber("swep_x"),GetConVarNumber("swep_y"),GetConVarNumber("swep_z"))
 	/* 
	// Normal animations found in MOST pistols and some rifles
	SWEP.Primary.EmptyAnim		= ACT_VM_DRYFIRE
	SWEP.Primary.ShootAnim		= ACT_VM_PRIMARYATTACK
	// If the weapon should be held like a shotgun when not in iron sight
	// If the held animation is crossbow, then it will be held like an AR2
	SWEP.Secondary.EmptyAnim	= ACT_VM_FIDGET			 // No dryfire anims for secondary attacks(normally)
	SWEP.Secondary.ShootAnim	= ACT_VM_SECONDARYATTACK // Melee, Special action, Secondary fire
	// Abnormal reload, as in HL2 and DODS style pistol reloads
	SWEP.ReloadAnim				= ACT_VM_RELOAD
	SWEP.EmptyReloadAnim		= ACT_VM_RELOAD_EMPTY
	// Once agian, Abnormal as defined above
	SWEP.DrawAnim				= ACT_VM_DRAW
	SWEP.EmptyDrawAnim			= ACT_VM_DRAW
	// Most Pistol, rifle, and shotgun models have these animations... Because VALVe modelers are smart!lol
	SWEP.EmpytyIdleAnim			= ACT_VM_IDLE
	SWEP.IdleAnim 				= ACT_VM_IDLE
	*/
	Tracers = {}
		Tracers[1] = "AR2Tracer"
		Tracers[2] = "AirboatGunHeavyTracer"
		Tracers[3] = "AirboatGunTracer"
		Tracers[4] = "Tracer" -- STOCK TRACER, Looks good
		Tracers[5] = "StriderTracer"
		Tracers[6] = "HelicopterTracer"
		Tracers[7] = "GunshipTracer"
		Tracers[8] = "LaserTracer" -- Hard to see headon
	AmmoTypes = {}
		AmmoTypes["pistol"] 		= 3
		AmmoTypes["alyxgun"] 		= 3
		AmmoTypes["357"]			= 5
		AmmoTypes["ar2"]			= 1
		AmmoTypes["smg1"]			= 4
		AmmoTypes["shotgun"]		= 7
		AmmoTypes["buckshot"]		= 7
		AmmoTypes["combinesniper"]	= 5	
		-- FILL WITH ALL AMMO TYPES!!!!

-- LOCAL VARS
 local IRONSIGHT_TIME 			= 0.25
 -- Client con vars
 local swep_reload_rate			= CreateClientConVar("swep_reload_rate", 			1, true, true)-- Unused/Unimplemented
 local swep_tracer				= CreateClientConVar("swep_tracer", 				4, false, true)
 local swep_use_phys_bullets 	= CreateClientConVar("swep_physical_bullets", 		1, true, true)
 local iron_from_file 			= CreateClientConVar("swep_IronSights_FromFile", 	0, true, true)
 local cl_swep_FOV 				= CreateClientConVar("cl_swep_FOV", 				72, {CLIENTCMD_CAN_EXECUTE, NOTIFY})

 -- Server con vars & discriptions
 local s_swep_AutoReload			= "Toggles whether SWEPs (that use this variable) reload automaticly when empty"
 local s_swep_AutoAim				= "Toggles whether SWEPs (that use this variable) can use the aim assist"
 local s_swep_penetration			= "Toggles whether SWEPs (that use this variable and do not use physical bullets) can penetrate materials in the world"
 local s_swep_IgnoreCrouchRunning	= "Toggles whether SWEPs (that use this variable) will ignore crouching players as running, which prevents them from attacking"
 local s_swep_DropMags				= "Toggles whether SWEPs (that use Magazines) will drop magazines containing some ammo"
 
 local swep_AutoReload 			= CreateConVar("swep_AutoReload", 				0, {FCVAR_NOTIFY,FCVAR_NEVER_AS_STRING, FCVAR_SERVER_CAN_EXECUTE}, s_swep_AutoReload)
 local swep_AutoAim				= CreateConVar("swep_AutoAim", 					0, {FCVAR_NOTIFY,FCVAR_NEVER_AS_STRING, FCVAR_SERVER_CAN_EXECUTE}, s_swep_AutoAim)
 local swep_penetration			= CreateConVar("swep_penetration", 				1, {FCVAR_NOTIFY,FCVAR_NEVER_AS_STRING, FCVAR_SERVER_CAN_EXECUTE}, s_swep_penetration)
 local swep_IgnoreCrouchRunning = CreateConVar("swep_IgnoreCrouchRunning", 		0, {FCVAR_NOTIFY,FCVAR_NEVER_AS_STRING, FCVAR_SERVER_CAN_EXECUTE}, s_swep_IgnoreCrouchRunning)
 local swep_FireVarience		= CreateConVar("swep_FireVarience", 		0.042, {FCVAR_NOTIFY,FCVAR_NEVER_AS_STRING, FCVAR_SERVER_CAN_EXECUTE}, s_swep_FireVarience)
 local swep_DropMags			= CreateConVar("swep_DropMags", 				1, {FCVAR_NOTIFY,FCVAR_NEVER_AS_STRING, FCVAR_SERVER_CAN_EXECUTE}, s_swep_DropMags)

SWEP.isInitialized = false and false and false -- FALSE ONLY!
/*---------------------------------------------------------
	Initialize
---------------------------------------------------------*/
function SWEP:Initialize()

	self:DebugTalk("<> INITIALIZED SHARED \n")
	
	--self:SetHoldType( self.HoldType )
	self:DebugTalk("Hold Types: 1:"..tostring(self.HoldType).. " 2:"..tostring(self.HoldType2).." R:"..tostring(self.ReloadHoldType))

	--
	if ( SERVER ) then
		-- Give NPC instructions
		self:SetNPCMinBurst( 1 )
		self:SetNPCMaxBurst( self.Primary.ClipSize/3 )
		self:SetNPCFireRate( self.Primary.Delay or 0.08 )
	end
	--
	-- NPC STOP --
	if (self.Owner:IsNPC()) then return end
	local NextIdle
	
	if (self.DoesIdle) and not self.Owner:IsNPC() then
		NextIdle = CurTime()
	else
		NextIdle = 0
	end

	--[[
	// init view model bone build function
	if IsValid(self.Owner) then 
			local vm = self.Owner:GetViewModel()
			if IsValid(vm) then
					--self:ResetBonePositions(vm)
					
					// Init viewmodel visibility
					if (self.ShowViewModel == nil or self.ShowViewModel) then
							vm:SetColor(Color(255,255,255,255))
					else
							// we set the alpha to 1 instead of 0 because else ViewModelDrawn stops being called
							vm:SetColor(Color(255,255,255,1))
							// ^ stopped working in GMod 13 because you have to do Entity:SetRenderMode(1) for translucency to kick in
							// however for some reason the view model resets to render mode 0 every frame so we just apply a self.DEBUG material to prevent it from drawing
							vm:SetMaterial("DEBUG/hsv")                        
					end
			end
	end
	--]]
	-- Correct possible flaws in logic
	self:InitCorrectLogic()
	--self:UpdateBones()

	self:DebugTalk("<> DONE INIT SHAREED")
	
	self.isInitialized = true -- Only run once!
	
end

function SWEP:InitCorrectLogic()
	-- Used to correct logic at SWEP start
	ErrorNoHalt("\n\n@@@ isInitialized: "..tostring(self.isInitialized).."\n\n")
	if (self.isInitialized == true) then return end
	self.DebugTalk("[InitCorrectLogic] Entering function...\n")
	--self.Owner:SetAllowWeaponsInVehicle(true)
	
	-- Handle Killicons and select icons
	self.IconColor				= self.IconColor or Color( 255, 120, 45, 120 )
	self.WepSelectFont 			= self.WepSelectFont or "csd" -- Needs to be shared ;D 

	--AddKIFont( self.WepFolderPath or self.FileName, self.IconFont, self.IconLetter, self.IconColor) 
	local n = self.WepFolderPath
	local n0 = self.WepFolderPath == nil
	local n1 = self.NameOfSWEP == nil
	local n2 = self.Name == nil
	local n3 = self.WeaponName == nil
	
	if n0 then
		if n1 then
			self.NameOfSWEP = n
		elseif n2 then
			self.Name = n
		elseif n3 then
			self.WeaponName = n
		end
	else
		if n1 then
			self.WepFolderPath = self.NameOfSWEP
		elseif n2 then
			self.WepFolderPath = self.Name
		elseif n3 then
			self.WepFolderPath = self.WeaponName
		end
	end
	
	if self.Primary.DryFireSound == nil then
		self:DebugTalk("Adjusting DryFireSound to PrimarySound IE "..tostring(self.Primary.Sound))
		self.Primary.DryFireSound = self.Primary.Sound
	end
	if self.Secondary.DryFireSound == nil then
		self.Secondary.DryFireSound = self.Secondary.Sound
	end

	if self.Purpose == "" and string.find(self.ClassName, "_base") then
		self.Purpose = "Weapons Base Development"
	end
	
	--self:SetClip1(self.Primary.ClipSize)
	self:SetClip1(0)
	--self:SetClip2(self.Secondary.ClipSize)
	self:SetClip2(0)
	
	-- Using defautlclip will fault HERE. @@@DEFAULTCLIP 
	if (self.Primary.ClipSize > 1) then
		self.Weapon:SetVar("PrimaryMagOut", true)
	end
	if (self.Secondary.ClipSize > 1) then
		self.Weapon:SetVar("SecondaryMagOut", true)
	end
	
	self:AdjustForAimAssist() -- Cant remember relivance, but needed
	
	// -----------------------------------------------------------------------------------------//   
	if self.Suppressor == true then
		self.CSMuzzleFlashes	= true
		self.CSMuzzleX			= true -- Pew pew! X
	end
	
	
	local b1 = self.WorksUnderWater == true
	local b2 = self.Primary.Ignite == true or self.Secondary.Ignite == true
	
	if (b1 or b2) and self.Note ==  nil then
		self.Note = ""
	end
	
	if (b1) then
		self.Note = self.Note.."\n100% Submergable"
	end
	
	if (b2) then
		self.Note = self.Note.."\nCaution: Flamable"
	end
	
	// -----------------------------------------------------------------------------------------//
	
	--[[
	if (self.HoldType2 ~= nil and self.HoldType2 ~= "" and string.find(tostring(self.Holdtype2), "hipfire") ~= -1
	and (self.Primary.Ammo == "pistol" 
		or self.Primary.Ammo == "alyxgun"
		or self.Primary.Ammo == "357"  
		or string.lower(self.HoldType) == "autopistol" ) ) then 
		-- Clearly dont hold it like a heavy AK... 
		-- This is just a fallback
		self.HoldType2 = "csspistol"
	end
	--]]
	
	/* 
	if self.Akimbo then
		self.Weapon:SetVar("AkimboSide", true) 
	end
	*/ 
	self.Weapon:SetVar("AkimboSide", false)
	
	local isC = string.find(self.ViewModel, "/c_", 8)
	if not isC  then -- and self.DoDModelFunction
		-- Correct for some things.   
		
		self.UseHands = false
		self.ArmOffset = self.ArmOffset or Vector(0.319, 0, 2.2) -- self.ArmOffset or 
		self.ArmAngle = self.ArmAngle or Vector(-23.101, 11.699, 13.199) -- self.ArmAngle or
	elseif isC then
		--ErrorNoHalt("C model detected - Offset: "..tostring(self.ArmOffset).." , Angle: "..tostring(self.ArmAngle).."\n")
		self.ArmOffset = self.ArmOffset or Vector (0.85, -6.6, 3.5) -- This is so there is a decent default run angle
		self.ArmAngle = self.ArmAngle or Vector (-13, 28, 2) 		-- Im not sure how people will like these run angles
	end
	
	if (self.DryFires and self.Primary.EmptyAnim == nil and self.Akimbo != true) then
		self.DebugTalk("[InitCorrectLogic] Correcting Empty Anim to ACT_VM_DRYFIRE\n")
		self.Primary.EmptyAnim		= ACT_VM_DRYFIRE
	end
	
	
	if not self.RunHoldType and (self:IsHoldForNormal( self.HoldType ) or self:IsHoldForNormal( self.HoldType2 )) then
		-- Then clearly we dont need to use passive for holding
		self.RunHoldType = "normal"
	else
		self.RunHoldType = "passive"
	end
	self:DebugTalk("RunHoldType: "..self.RunHoldType)
	
	-- @@@ How to figure out WorldIsCold
	if self:WorldIsCold() then
		self.Base_Heat = 25 -- IE below waters freezing point in F
	end

	if (game.SinglePlayer() and SERVER) then
		self:Init_Check("\n~INIT LOADED~\n")

	end
	--]]

	self:GrabAnimIndex()
	
	self:CorrectLogic()
	self.DebugTalk("@@@ LEAVING InitCorrectLogic\n")
end

function SWEP:LoadUserProfile( filepath ) -- IMPLEMENT ME!
	self:DebugTalk("<> Loading User Profile <>")
	if not filepath then
		filepath = "" -- @@@Write correct path here!
	end
	
	local profile = string.Explode( "," , file.Read( filepath ) )

	local flag = self:UpdateUserProfile(profile)
	-- Defaults are in place if profile cant be loaded

	self:DebugTalk("<> User Profile Load Done <>")
end

function SWEP:UpdateUserProfile( proftbl )
	if not proftbl or type(proftbl)~="table" then
		-- Ooops!
		ErrorNoHalt("[!] Cannot update fiery profile >> Non-Table provided \n")
		return false
	end
	
	-- @@@Var lists here.
	-- STEAMID
	-- KILL COUNT
	-- FOV
	-- LEFT or RIGHT
	-- CX Color
	-- CX Type
	-- Use Custom Ironsights (from file)?
	
	
	-- Special args?
	
	return true
end

function SWEP:CorrectLogic() -- For use outside this base
		-- Checklist of logic
	self:DebugTalk("<><> CORRECT LOGIC <><>\n")
	self.Weapon:SetNetworkedBool( "Ironsights", false )

	-- TO BE EDITED
	--if (self.DoDModelFunction) and (self.UseHands) then
		--self.UseHands = false
	--end
	
	
end

------------ INTERMEDIATE FUNCTIONS -----=======================================================+++++++++++++++++++++++++++++++++

/*---------------------------------------------------------
	Get Weapon Draw Speed
	-Not to be confused with GetTripodRate() 
---------------------------------------------------------*/
function SWEP:GetDrawRate( arg )
	local amt = 1
	
	-- List off contributing variables
	-- HP , IsMoving? , IsCrouched
	-- 
	if self.Owner:Health() < 75 then
		amt = amt - .15
	end
	
	if self:IsOwnerMoving() then
		amt = amt + .1
	end
	
	if self.Owner:Crouching() then
		amt = amt + .15
	end
	
	return amt
end

/*---------------------------------------------------------
	Deploy/Draw Weapon
	-Not to be confused with Tripod()
---------------------------------------------------------*/
function SWEP:Deploy()

	self:DebugTalk("<> DEPLOY <>")
	local t
	self:SetIronsights(false)
	--self:SetHoldType( "357" ) -- GetConVarNumber("cl_swep_FOV")
	--self:Talk("Activity Translate: "..tostring(self.ActivityTranslate))
	
	-- Need to use in swep function
	self:SetFOV(GetConVarNumber("cl_swep_FOV") , 0.33 )
	self.FireVariance = GetConVar("swep_FireVarience"):GetFloat()
	-- UPDATE SCRIPT! @@@
	-- Play animations
	--	anim_name, pbr, snd, volume, idle_after, iron_off
	--self:VMact("DRAW", 1.25, self.DrawSound, nil, true )
	self:VMact("DRAW", self:GetDrawRate() or 1.25, self.DrawSound) --
	self:SetNextIdle("SOON")
	
	t = self:GetSeqDur()
	-- Trim next event times
	self:SetNextPrimAndSecon(t*0.95, t*0.80)
	self.ReloadingTime = CurTime() + t*0.2
	
	-- Check ironsights
	local b1 = tobool(self.IronSightsPos == nil)
	local b2 = tobool(GetConVarNumber("swep_IronSights_FromFile"))
<<<<<<< HEAD
	local b3 = tobool(self.Thrown == true)
	if (b1 or b2) and not b3 then
=======
	if (b1 or b2) then
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
		self:GetIronData()
		self:DebugTalk("Ironsights missing or swep_IronSights_FromFile = 1!\nSearching...")
	end

	--self:UpdateBones()
	--self:Talk("Properties: " .. tostring(self.DryFires))
	self.Weapon:SetNetworkedBool("reloading", false)

	self:AdjustForAimAssist() -- Recoil still applies!!
	
	self:DebugTalk("<> Deploy Done<>\n")
	
	return true
end
--]]
function SWEP:Holster()
        local b1 = CLIENT
		local b2 = IsValid(self.Owner)
		
        if b1 and b2 then
                local vm = self.Owner:GetViewModel()
				
                if IsValid(vm) then
                       -- self:ResetBonePositions(vm)
                end
        end
		
		if b2 then
			self:SetHoldType( "normal" )
		end
        
		self.Weapon:SetNetworkedBool("reloading", false)
		
        return true
end

function SWEP:SetNextIdle( time, anim )
	--self:DebugTalk("Next idle: "..tostring(time))
	if not self.DoesIdle then return end
	
	local NOW = CurTime() -- Just incase its too precise lol
	--BeconOut("SetNextIdle")
	if time and type(time) == "string" then
		if string.upper(time) == "SOON" then
			time = NOW + (self:GetSeqDur() * 0.95)
		elseif string.upper(time) == "NOW" or tostring(time) == "0" then
			-- There was a schema change...
			-- This needs to be worked with...
			self:Idle(anim)
		end
	end
	--self:DebugTalk("01 NextIdle: "..tostring(NextIdle).. " VS "..tostring(CurTime()).."\n")
	if not time then 
		NextIdle = CurTime()
	elseif not(time + self:GetSeqDur() < NOW) then
		-- Make sure the time isnt in the PAST
		NextIdle = time + self:GetSeqDur()
		--self:DebugTalk("O2 NextIdle: "..tostring(NextIdle).. " VS "..tostring(CurTime()).."\n")
	else
		ErrorNoHalt("\n[!] Idle timers are getting behind!\n")
	end
end

function SWEP:Idle( anim ) -- Yuz
	if SERVER then return end
	
	local b1 = (self.ReloadingTime or 0) > CurTime()
	local b2 = false --self:GetSeqDur() > 0 -- < issue
	
	self:DebugTalk("@IDLE-B1: "..tostring(b1).." \n\t\tIDLE-B2: "..tostring(b2).." ("..tostring(self:GetSeqDur())..") \n\t\t<> Reloading Time: "..tostring(self.ReloadingTime).." vs CURTIME: "..CurTime().."\n")
	if b1 or b2 then return end -- not self.DoesIdle or 
	
	self:VMact(anim or "IDLE")
	self:SetNextIdle( CurTime() + self:GetSeqDur()*0.95)
	self:DebugTalk("\n\tW00T\tAn Idle has occured\n\n\n\n")
end

function SWEP:DropMagPrimary(t)
	if not t then t = 0 end
	
	self.Weapon:SetVar("PrimaryMagOut", true)
	local amt =  math.max(self.Weapon:Clip1(),0) 
	local ammot = self.Primary.Ammo
	self.Weapon:SetClip1( math.min( self.Primary.ClipSize 	, 0 ) ) 
	local useMags = GetConVar("swep_DropMags"):GetBool()
<<<<<<< HEAD
	if useMags == true and not self.NoMag then
=======
	if useMags == true then
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
		-- Create Mag
		self:SpawnMag( t, amt, ammot )
	else
		self.Owner:GiveAmmo(amt, ammot, true) -- bool to not show ammo return
	end
end

function SWEP:DropMagSecondary(t)
	if not t then t = 0 end
	
	self.Weapon:SetVar("SecondaryMagOut", true)
	local amt = math.max(self.Weapon:Clip2(),0)
	local ammot = self.Secondary.Ammo
	self.Weapon:SetClip2( math.min( self.Secondary.ClipSize	, 0 ) )	
<<<<<<< HEAD
	local useMags = GetConVar("swep_DropMags"):GetBool()
	if useMags == true and not self.NoMag then
=======
	if GetConVar("swep_DropMags"):GetBool() then
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
		-- Create Mag
		self:SpawnMag( t, amt, ammot)
	else

		self.Owner:GiveAmmo( amt , ammot, true) -- bool to not show ammo return
	end
end

--[[---------------------------------------------------------
   Name: SWEP:RemoveClip( )  Aka UnloadClip
   Desc: Drop magazine
-----------------------------------------------------------]]
function SWEP:RemoveClip()
	-- Refund ammunition to player
	-- Built for RP mostly
	self:DebugTalk("[1] Entering RemoveClip()\n")
	if not self.Owner:KeyDown( IN_ATTACK2 ) then return false end
	self:DebugTalk("[1.25] RemoveClip()\n")
	local cur = CurTime()
	local b1 = self.Weapon:GetNextPrimaryFire() > cur
	local b2 = self.Weapon:GetNextSecondaryFire() > cur
	local b3 = (self.ReloadingTime or 0) > cur

	if b1 or b2 or b3 then
		self:DebugTalk("[1.5] RemoveClip() CURTIME ("..tostring(cur)..") <? ::\n\t ReloadTime "..tostring(b3).." "..tostring(self.ReloadingTime ).."\n\t,b1 "..tostring(b1).." "..tostring(self.Weapon:GetNextPrimaryFire()).."\n\t,b2 "..tostring(b2).." "..tostring(self.Weapon:GetNextSecondaryFire()).."\n\t::\n")
		return false
	end
	

	if (self.Weapon:Clip1() <= 0) and (self.Weapon:Clip2() <= 0) then return false end
	self:DebugTalk("[1.75] RemoveClip()")
	if self.Primary.ClipSize <= 0 and self.Secondary.ClipSize <= 0 then return false end

	local dur
	local cutat = 0.32 -- A constantc @@@
	self:DebugTalk("[2] Past most barriers\n")
	--  self.EmptyReloadAnim or self.ReloadAnim or  
	-- Animate a reload with no idle after and iron off
			--	anim_name, pbr, snd, volume, idle_after, iron_off
	self:VMact( self.RemoveMagAnim or self.EmptyReloadAnim or self.ReloadAnim or ACT_VM_RELOAD , 1, nil, nil, false, true)
	self.Owner:SetAnimation( PLAYER_RELOAD )
	self:SetNextPrimAndSecon(0.025)
	self:CancelShotgunReload()
	
	dur = self:SequenceDuration()
	-- Set an animation for later
	local point =(dur * cutat)
	self:DebugTalk("[3] ".. tostring(point) .." |DUR : ".. dur .."\n")
	self.ReloadingTime = CurTime() + point
	local priClip = self.Weapon:Clip1()
	local secClip = self.Weapon:Clip2()
	
	-- Sync spawn mag with remove mag
	self:DropMagPrimary(dur/2)
	if self.Akimbo then
		self:DropMagSecondary(dur/2)
	end
	
	self:DebugTalk("[4] Starting the timer\n")
	self:SafeTimer( point , function()
		
		-- Stop the animation at the desired point
		--self:VMact("idle", 1.1, nil, nil) -- Volume left undefined]
		-- self.EmptyIdleAnim or self.IdleAnim or ACT_VM_IDLE
		local b1 = self.EmptyIdleAnim == nil
		local b2 = self.DryFires == true
		local anim = self.EmpytyIdleAnim or ACT_VM_DRAW or ACT_VM_IDLE
		self:DebugTalk("~~~~ B1: "..tostring(b1).."\tB2:"..tostring(b2).."\tAnim:"..tostring(anim).."\n")
		if ( b1 and b2) then
			if self.DoDModelFunction == true then
				anim = ACT_VM_IDLE_EMPTY -- self.Primary.EmptyAnim 
			else
				anim = ACT_VM_DRYFIRE
			end
		end		
		
		--self:Idle( 0, anim )
		--	anim_name, pbr, snd, volume, idle_after, iron_off
		self:VMact(anim)
		--self:Talk("ANIM: "..tostring(anim))
		--self:VMact("IDLE")
		--self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
		self:DebugTalk(anim)
		
		self:SetHoldType("normal")
		self.Owner:SetAnimation( PLAYER_IDLE )
		self:DebugTalk("[5] Completed RemoveClip\n")
		
	end)

	return true
end

cleanup.Register("Fiery Magazine")
function SWEP:SpawnMag(t, n, ammot)
	if self.Chambers or self.NoMag == true or (self.Primary.ClipSize < 2 and self.Secondary.ClipSize < 2) then return false end
	--self:Talk("MAG IS: "..tostring(self.Mag))
<<<<<<< HEAD
	local genericMag = "models/weapons/w_pist_cz_75_mag.mdl"
	if ammot ~= "smg1" and ammot ~= "pistol" and ammot ~= "357" and ammot ~= "alyxgun" then
		genericMag = "models/weapons/w_rif_m4a1_s_mag.mdl"
	end
	local mag2		= self.Mag or self:FindMagType() or genericMag
=======
	local mag2		= self.Mag or self:FindMagType() or "models/weapons/w_pist_cz_75_mag.mdl"
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	-- Checks
	
	if not self.Mag and mag2 then
		self.Mag = mag2
	end
	
	if CLIENT then return end -- Check validity
	--self:Talk("Mag to use is: " .. tostring(self.Mag))
	self:SafeTimer( t, function()
			--local mag		= Model("models/weapons/w_pist_deagle_mag.mdl")
			--local mag		= Model("models/weapons/w_pist_cz_75_mag.mdl")
			--local mag2		= self.Mag
						local t2		= 65
			item = self:DoSpawnMagazine(mag2, n, ammot)
			
			timer.Simple( t2, function() -- timer.Simple EXPLICITLY!! No-safetimers!
					local ent = item
					
					if nil == ent or not IsValid(ent) then 
						--ErrorNoHalt("Mag not found, aborting")
						return 
					end
					
					local targ = item:EntIndex().."mag"--item:GetClass() //Give it a unique name
					ent:SetKeyValue("targetname",targ)
					
					local dissolver = ents.Create("env_entity_dissolver")
					dissolver:SetPos(Vector(0,0,0)) -- Doesn't need to be in any particular position
					dissolver:SetKeyValue("target",targ)
					dissolver:SetKeyValue("magnitude",300)
					dissolver:SetKeyValue("dissolvetype",4)
					dissolver:Spawn()
					dissolver:Activate()
					dissolver:Fire("Dissolve") -- Vanish
			end)
			--
		undo.Create("Fiery Magazine") -- Integrate me harder!
			undo.AddEntity(health)
			undo.SetPlayer(self.Owner)
		undo.Finish()

		self.Owner:AddCleanup("Fiery Magazine", item)
	end)
end

function SWEP:DoSpawnMagazine(mag2, n, ammot, addUp)
			--if CLIENT then return end
			if not addUp and addUp != false then
				addUp = false
			end
			self:DebugTalk("CALL DETAILS: "..tostring(mag2).."\t"..tostring(n).."\t"..tostring(ammot).."\n\n")
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
			
			item.AMOUNT = n or 1337
			item.AMMOTYPE = ammot or "alyxgun"
			
			item:SetAngles(aim:Angle())
			item:SetPos(pos)
			--item:SetOwner(self.Owner) -- NEVER USE! COLLISION ISSUES 
			item:SetPhysicsAttacker(self.Owner)
			-- ans = item:SpawnFunction(self.Owner, nil, pos)
			
			item:Spawn()
			item:Activate()

			--item:PhysicsInit( SOLID_VPHYSICS )
			local phys = item:GetPhysicsObject()  	
			if not phys:IsValid() then  		
				item:Remove()
				return false
			end

			local push = Vector(item:GetForward()+item:GetUp())
			item:SetVelocity( push * speed )
			return item
end

--[[---------------------------------------------------------
   Name: SWEP:CheckReload( )
   Desc: CheckReload -- unhooked?
-----------------------------------------------------------]]
function SWEP:CheckReload()-- USE ME!
	-- @@@ Research usage!
end
-- GOD MODE (inf ammo) VAR SWITCH HERE!!

/*---------------------------------------------------------
	Reload
---------------------------------------------------------*/
--
function SWEP:Reload() -- @@@ DECLUTER!
	--self:DebugTalk("RELOAD START") 
	if (self.ReloadingTime and CurTime() <= self.ReloadingTime) or (self.Weapon:GetNetworkedBool("reloading", true))  then return end
	
	-- Check feild of view and direct target
	if self.Owner:KeyDown( IN_USE ) then
		local ent = nil
		if self.Owner:GetEyeTrace().Entity ~= nil then
			ent = self.Owner:GetEyeTrace().Entity
		end
		
		local max_trace = 50 -- VAR ME

		if ent ~= nil then 
			-- Make sure were not too close!
			if ( math.abs( ent:GetPos():Distance(self.Owner:GetPos()) ) <= max_trace) then 
				self:DebugTalk("Player too close to object ("..tostring(ent)..")! Aborting Reload Modify!\n")
				return false
			end
		end
		-- Cleared for USE Modifier or Drop clip
		
		-- @@@TODO: Actions based on scrolling up and down...
		
		if self.Owner:KeyDown( IN_ATTACK2 ) then -- If scrolling back
			return self:RemoveClip()
		end
		
		if (not self.Owner:KeyDownLast( IN_USE )) and self:HasModify() and self:CanSecondaryAttack()  then
			self:Modify() -- USE MODIFYER
			 -- SET UP INDIVIDUAL VALUE FOR THIS!!! Not just Secondary attack
			return true
		end
	end

	-- ENTER RELOADING PHASE
	local arg1 = (self.Weapon:Clip1() < self.Primary.ClipSize  
					and self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) 
					and (((self.Owner:KeyPressed( IN_RELOAD ) and
					not self.Owner:KeyDownLast( IN_RELOAD )) or GetConVar("swep_AutoReload"):GetBool()))
	
	-- Chambering Check
	if tobool(self.Chambers) then
		-- This area is specificly designed to require 2 Chambering motions to be done
		if (self.Primary.Chambered == false) then
			self:ChamberPrimary()
			self.Weapon:SetVar("PrimaryMagOut", false)
			return true
		elseif(self.Secondary.Chambered == false) then
			self:ChamberSecondary()
			self.Weapon:SetVar("SecondaryMagOut", false)
			return true
		end
	end
	
	self:DebugTalk("<> Attempting to call shotgun reload <> "..tostring(arg1).. " & "..tostring(self.ShotgunFunctions).."\n")
	
	if self.ShotgunFunctions then
		if arg1 then
			-- So We can use the Think Function
			
			self:ShotgunReload() -- @@@ShotgunReload
			return true
		else
			--self:CancelShotgunReload()
			return false
		end
	end
	self.Weapon:SetNetworkedBool("reloading", true)
	--self:Talk("End-ish of reload")
	local flag = nil
	-- Regular Reload Params
	if not arg1 then self.Weapon:SetNetworkedBool("reloading", false) return end --@@@ Owner dead
	flag = self.Weapon:DefaultReload( ACT_VM_RELOAD ) -- It'll do what i needs to
	
	if not flag then self.Weapon:SetNetworkedBool("reloading", false) return end
	--self:PrintStats(true, false)
	
	self:SetHoldType( self.ReloadHoldType or self.HoldType )
	self:StandardReload() -- This really should get called btw.. important.
	
	-- @@@TEST: Test this often!
	self.Weapon:SetVar("PrimaryMagOut", false)
	self.Weapon:SetVar("SecondaryMagOut", false)	

	return true
end
--]]
function SWEP:StandardReload() -- @@@RELOAD
	local da_pbr = 1
	local at
	local m1 = not self.Weapon:GetVar("PrimaryMagOut")
	local m2 = not self.Weapon:GetVar("SecondaryMagOut")
	
		  --	anim_name, pbr, snd, volume, idle_after, iron_off
	self:VMact("RELOAD", da_pbr, nil) -- self.ReloadSound
	self:SetNextIdle("SOON")
	at = self:GetSeqDur()
	
	self.ReloadingTime = CurTime() + (at * da_pbr)
	self:SetNextPrimAndSecon(0.98) 
	
	-- SafeTimers

	if m1 then
		self:DropMagPrimary(at/3)
	end
	if self.Akimbo and m2 then
		self:DropMagSecondary(at/3)
	end
	
	self:SafeTimer( at, function()
						-- Fall back included
						self.Weapon:SetNetworkedBool( "reloading", false)
						if self:AreArmsDown()  then
							self:SetHoldType( self.RunHoldType or "normal" ) -- 
						elseif self.Akimbo then
							self:SetHoldType( "dual" ) -- Theres a glitch! @@@FIXME!
						else
							if self.Weapon:GetNetworkedBool( "Ironsights" ) then
								self:SetHoldType( self.HoldType ) -- 
							else
								self:SetHoldType( self.HoldType2 or self.HoldType ) -- 
							end
						end
					end )
	-- Continue with checks
	
	if (self.Primary.ClipSize > 8) and (self.Weapon:Clip1() <= self.Primary.ClipSize/2 ) then
		-- Check a minimum clipsize for shotguns and revolvers..
		self:SetIronsights( false )
	end
end

function SWEP:ChamberPrimary()
	
	if (self.Chambers == false or self.Primary.Chambering == true or self.Primary.ClipSize < 1) then return end
	local speed = 1
	
	
	if (self.ShotgunFunction) then
		//if (anim) then
			speed = 1.25
			self:VMact( self.Primary.Chamber , speed)			
			self.Owner:EmitSound(self.Primary.ChamberSound or "")
		//else
			//self:VMact( ACT_SHOTGUN_RELOAD_FINISH , 1.25)
		//end	
	else
		speed = 2
		self:VMact( self.Primary.Chamber , speed) -- CHANGE?
		self.Owner:EmitSound(self.Primary.ChamberSound or "")
	end
	
	local t = (self:GetSeqDur()/speed)*0.75
	self:SetNextPrimAndSecon(t)
	self.Primary.Chambering = true
	-- For later
	self:SafeTimer(t, function()
		self.Primary.Chambered 	= true
		self.Primary.Chambering = false
		
	end)
	
end

function SWEP:ChamberSecondary() -- Expand?
	if (self.Secondary.ClipSize < 1) then return end
	self:VMact( ACT_VM_FIDGET )
	self.Secondary.Chambered = true
end

function SWEP:ShotgunReload()
	-- Rightclick while reloading -> cancelreload
--	if ( self.Reloadaftershoot > CurTime() ) then return end
	self:DebugTalk("<> ShotgunReload CALLED <> \n")
	
	if ( self.Weapon:GetNWBool("reloading", false) == true ) then
		if not self.Owner:KeyPressed(IN_ATTACK) then 
			-- Cancel the reload
			self:CancelShotgunReload()
		end
		return
	end

	if (self.Weapon:Clip1() < self.Primary.ClipSize 
		and self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) and not self.Owner:KeyDown( IN_ATTACK2 ) then
			self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START)
			local tt = self:GetSeqDur()*0.95
			self.Weapon:SetNextPrimaryFire(CurTime() + tt)
			self.Weapon:SetNextSecondaryFire(CurTime() + tt)
			self.Owner:DoReloadEvent()
			self.Weapon:SetNetworkedBool("reloading", true)
			self:DebugTalk("<> Shotgun Reload called and cleared <> \n")

	end
 
	--self:SetFOV( 0, 0.15 )
	-- Zoom = 0
	-- for non magazine snipers??
	
	self:SetIronsights( false )
	-- Set the ironsight to false
	
end

function SWEP:CancelShotgunReload()
	-- Faster version of Finish
	-- HALT SHOTGUN RELOAD, FLATTEN OUT
	self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
	self.Weapon:SetNextSecondaryFire(CurTime() + 0.5)
	self.Weapon:SetVar("reloadtimer", CurTime() - 1) -- TEST ME!
	self.Weapon:SetNetworkedBool( "reloading", false)
	self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
	self:DebugTalk("<> Reload canceled <> \n")
	--while self.Owner:KeyDown(IN_RELOAD) do
		
	--end
end

------------ PRIMARY AND SECONDARY -----=======================================+++++++++++++++++++++++++++++++++

/*---------------------------------------------------------
   Name: SWEP:CanPrimaryAttack()
   Desc: Helper function for checking for no ammo.
---------------------------------------------------------*/
function SWEP:CanPrimaryAttack()
	
	local b1, ent = self:AreArmsDown()
	if self.Weapon:GetVar("PrimaryMagOut") or (b1 and not self:CheckTarget(ent,30)) then return false, nil end -- or self:IsFlooded()

	local delay = 0.08 -- Between checks for this function
	local eval = (self.Weapon:Clip1() <= 0 and self.Primary.ClipSize > 0 and (self:Ammo1() >= 0))
	local b2 = GetConVar("swep_AutoReload"):GetBool()
	
	if (self.Primary.ClipSize < 0) then -- and (self:Ammo1() > 0)
		return true, ent -- MELEE
	end
	self:DebugTalk("Can Attack: " .. tostring(eval).. " b1:" .. tostring(b1).."\n\n")

	-- Clip is empty
	if eval then
		
		if ( b2 ) then -- Reload on empty?
			self:Talk("Im in!")
			self:Reload()
		elseif (self.Owner:KeyPressed(IN_ATTACK)) then
			-- COMBINE THESE INTO 1 VMACT CALL!
			self.Weapon:SetNextPrimaryFire(CurTime() + delay)
			
			self:EXESound( {"Default.ClipEmpty_Pistol", self.Owner} )
			self:VMact(self.Primary.CantAttack) -- HL2 Animation trick
			
			self.Owner:SetAnimation( PLAYER_ATTACK1 ) -- @@@ Use reduced recoil animation? Or trash it
		end
		
		return false, ent
--[[elseif not self.Owner:IsNPC() and (self.Owner:KeyDown(IN_SPEED)) then
		self.Weapon:SetNextPrimaryFire(CurTime() + delay)
		return false --]]
	--elseif ar then
		--self:Reload()
		//GetConVar("swep_AutoReload"):GetBool() 
	elseif (self.Primary.Chambered == false) then
		if (true) then
			// Chamber for them
			self:ChamberPrimary()
		else
			// Not sure?
		end
		return false, ent
	end

	return true, ent
end

/*---------------------------------------------------------
	PrimaryAttack
---------------------------------------------------------*/
function SWEP:PrimaryAttack()
	--local ar = not(self.Akimbo) and (self.Weapon:Clip1() <= 0) and (self.Primary.ClipSize > 0) and (self:Ammo1() > 0)
	local b1, target = self:CanPrimaryAttack()
	local arg1 = ( not b1 or self.Weapon:GetNetworkedBool( "reloading", false) == true)
	if arg1 or self.Owner:KeyDown( IN_RELOAD ) then return end

	self.Weapon:SetVar("AkimboSide", false) -- @@@ Implement
	local z1 = target ~= nil
	local z2 = target:IsNPC() 
	local z3a = target:GetPos():Distance( self.Owner:GetPos() ) 
	local z3 = z3a < 38 -- Can be like 72
	local b2 = z1 and z2 and z3 -- @@@ Make sv_var!
	self:DebugTalk("Point Blank Args: "..tostring(z1).." "..tostring(z2).." "..tostring(z3).." DIST: "..tostring(z3a))
	--[[
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
	else
	--]]
	if b2 then
		-- The target is close and right infront of us
		-- So lets do some damage 
		self:DebugTalk("Inside Point Blank section")
		self:AimAssist(target)
	end
		
	-- FIRE PARAMS
	if self.Primary.BurstFire > 0 and self.data.modes[self.FireMode] == 2 then  -- @@@ Make firemode checking function
		-- They've called for Burst Only functions
		self:DebugTalk("Entering Primary Burstfire   MODE:"..tostring(self.FireMode).."\n")

		self:PrimaryBurst(self.Primary.BurstFire)
		return true

	elseif not(self.Weapon:Clip1() <= 0 and self.Primary.ClipSize > 0) and self.Weapon:GetNetworkedBool( "reloading", false ) == false then
		
		--self:PrimaryShootEffects() -- Get this goin to reference the animation length
		--OBSOLEET --self:CSShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self.Primary.Cone )
		
		local b1 = not (GetConVar("swep_physical_bullets"):GetBool())
		local b2 = not self.Primary.DelayShots == true
		local anim = true
		if self.Weapon:Clip1()-1 < 1 then
			-- This area can create weird anims
			-- But for the most part filling this
			-- Should be handled by a BASE
			--anim = self.Primary.EmptyAnim or true
			anim = self.Primary.EmptyAnim or self.Primary.ShootAnim or true
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
										self.Primary.Cone,
										self.Primary.Ammo,
										anim
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

function SWEP:PrimaryDelayShot()
	// Make sure we can shoot first
	if ( !self:CanPrimaryAttack() ) then return end
	
	-- self.Weapon:SetNextPrimaryFire( CurTime() + 0.13+0.1 )
	-- side, recoil, anim, snd, numshot
	-- self:ShootEffects(1, self.Primary.Recoil, true, "", 1) -- self.Primary.Sound
	
	--	anim_name, pbr, snd, volume, idle_after, iron_off
	self:VMact("PRIMARY", 1, "")
	
	self:SafeTimer( 0.1 , function()
		local flag = self:FireGun()
		self:DebugTalk("FireGun() returned "..tostring(flag).."\n")
		return 
	end)
end

function SWEP:FireGun() -- Cant use self:Fire() ...
	--if not self or not self.Owner then return end
		
	--self:CSShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.Recoil, self.Primary.Cone )
	--self:ShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.Recoil, self.Primary.Cone )
	--local c = math.random(self.Primary.Cone*-1, self.Primary.Cone)
	local c = self.Primary.Cone
	self:ShootBullet( 1, self.Primary.Damage, self.Primary.Recoil, 1, c, self.Primary.Ammo, 0)
	self:DebugTalk("POP! FireGun() called\n")

	// Remove 1 bullet from our clip
	--self:TakePrimaryAmmo( 1 )
	
	// Punch the player's view
	--self.Owner:ViewPunch( Angle( -1, 0, 0 ) )
	
	return true
end

/*---------------------------------------------------------
	Name: PrimaryBurst
	Desc: A built in burst fire function
	@@@TODO: Make compatable with Physical bullets
---------------------------------------------------------*/
function SWEP:PrimaryBurst( NumShot )
	if (not NumShot) or (NumShot < 2) then 
		NumShot = math.max(self.Primary.BurstFire,3) -- Check Relevance
	end
	
	local cone = self.Primary.Cone
	local delay = self.Primary.BurstDelay or self.Primary.Delay
	local animflag = true
	local anim
	
	self:CanPrimaryAttack( false )
	-- Lock it to prevent weird timer overlaps
	--self:CSShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots,  cone)
	
	-- Make more broad cased? @@@
	if (self.Primary.Ammo == "ar2") then
		anim = "PRIMARY" -- @@@ Make burst an arg?
	else
		anim = ACT_VM_SECONDARYATTACK -- @@@ More integration
		animflag = false
	end
	    
	self:ShootBullet( 	1,
						self.Primary.Damage,
						self.Primary.Recoil,
						self.Primary.NumShots,
						cone + math.random(-cone*.95, cone*.95 ),
						self.Primary.Ammo,
						nil
					)
	
	
	-- Generate number of shots in a loop
	for x = 1, NumShot-1, 1 do
		local flag = (x == NumShot-1)
		
		self:SafeTimer( delay * x, function()
			if self.Weapon:Clip1() < 1 then return false end
			self:ShootBullet( 	1,
								self.Primary.Damage,
								self.Primary.Recoil,
								self.Primary.NumShots,
								cone + math.random(-cone*.95, cone*.95 ),
								self.Primary.AmmoType,
								animflag
							)

			if flag then
				self:CanPrimaryAttack( true )
				self.Weapon:SetNextPrimaryFire( CurTime() + (delay*1.55) )
			end
		end)
		
	end
end
---------------------------------------------------------------------------------
-- self:FireAnimationEvent()
function SWEP:CanSecondaryAttack() -- Needs work!
	if self.Weapon:GetVar("SecondaryMagOut") then return false end

	local delay = 0.005
	local eval1 = self.Akimbo == true
	local eval2 = self.Weapon:Clip2() < 1 and self.Secondary.ClipSize > 0
	local eval3 = self:IsFlooded()
	
	--ErrorNoHalt("CHECKS: 1." .. tostring(eval1) .. " : 2." .. tostring(eval2) .."->".. tostring(self.Weapon:Clip2() < 0).. "&"..tostring(self.Secondary.ClipSize > 0).." : 3." .. tostring(eval3) .. " \n")
	if ( self.Weapon:GetNetworkedBool( "reloading", false ) == true and not eval1) then
		if ( self.Weapon:GetNetworkedBool( "Ironsights", false ) == false) then
			-- Allow iron transitions durring reload
			self:SetIronsights( !self.Weapon:GetNetworkedBool( "Ironsights", false ) )
			self.Weapon:SetNextSecondaryFire(CurTime() + delay) -- Delay
			
			return false
		end
	end 
	
	-- Weapon level --
	--self:Talk("CSA?: "..tostring(eval2)..tostring(eval3).." : \n\n")
	if (eval2 or eval3) then 
		self.Weapon:SetNextSecondaryFire(CurTime() + delay) -- Delay
		return false
	end
	
	if (eval1) then
		
		if (eval2 or eval3) then
			
			
			return false
		end
	end
	
	return true
end

function SWEP:TesterFunc( arg )
	local x = 0.001
	local pbr = 1

	--	anim_name, pbr, snd, volume, idle_after, iron_off
	self:VMact("RELOAD", pbr)
	local t = self:GetSeqDur()
	
	-- 42 FPS @ 1 pbr
	local f = (t/2)
	local r = f/x
	self:Talk("Seconds till: "..f.." , Rate: "..r)
	pbr = r
	
	self:VMact("RELOAD", pbr)
	--self.Owner:GetViewModel():SetPlaybackRate(pbr)
	
	self:SafeTimer(x, function()
		self.Owner:GetViewModel():SetPlaybackRate(1)
		self:Talk("End of speed\t SeqDur"..tostring(self:GetSeqDur()))
	
	end)
	
end

/*---------------------------------------------------------
	SecondaryAttack
---------------------------------------------------------*/
function SWEP:SecondaryAttack( arg )

	local eval = not self:CanSecondaryAttack() -- Creates a false return if trues
	
	self:DebugTalk("\t@FireMode: "..tostring(self.FireMode).."\n")
	self:DebugTalk("Secondary Attack - Can Attack? "..tostring(eval).."\n")
	
	if self.NextSecondaryAttack == 0 then self.NextSecondaryAttack = CurTime() return false end
	if (eval and self.Akimbo == true) then Msg("Rejected") return false end
	
	self.Weapon:SetVar("AkimboSide", true)
-- tobool(tonumber(self.DEBUG))
	--Msg("TF "..tostring(self:TesterFunc()))
	local hm = self:HasModify()
	--ErrorNoHalt("[~] Has Modify? " .. tostring(hm))
	
	if not self.Owner:KeyDown( IN_RELOAD ) and ( self.Owner:KeyDown( IN_USE ) and not self.Owner:KeyReleased( IN_USE ) ) then  
			--self.Owner:RemoveSuit()
			--self:SetIronsights( !self.Weapon:GetNetworkedBool( "Ironsights", false ) )
			--self.Weapon:SetNextSecondaryFire( CurTime() + 0.06 ) 
		if hm then	
			-- Use a modifier
			self:DebugTalk("[~] Modify going toward burst/Modify()")
			self:Modify( self.ForceModifier or nil )
			
			return true
		else
			self:Idle()
			self:DebugTalk("Idle event triggered via SECONDARY ATTACK")
			--self:TesterFunc()
		end
	else	
		--self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
		-- Standard click
		if isTbl(self.Akimbo) then -- @@@ I dont think Akimbo is a table anymore
			self:FireSpare()
			--self:Talk("Im in secondary at FIRE SPARE") 
		elseif (self.AimAssist != false and GetConVar("swep_AutoAim"):GetBool()) then
			local t = self:AimAssist()
			self:DebugTalk("Im in secondary at AIM ASSIST, returned "..tostring(t).."\n")
		else
			--self:Beep("SIGHTS")
			self:Sights()
			--self:Talk("Im in secondary at SIGHTS!")
		end
		return true
	end
	return false
end

-- @@FIRESPARE 
function SWEP:FireSpare() -- NEDDS WORK !!!!
	--  @@@Edit
	-- Make sure we can shoot first
	local b1 = self:CanSecondaryAttack()
	--self:Talk("Secondary Attack: Can? "..tostring(b1))
	if not b1 then return end
	
	self.Weapon:SetVar("AkimboSide", true)

	-- damage, bullets, aimcone
	self:ShootBullet( 	2,
						self.Secondary.Damage 	or self.Primary.Damage,
						self.Secondary.NumShots or self.Primary.NumShots,
						self.Secondary.Cone 	or self.Primary.Cone 		or 0.05,
						self.Secondary.Ammo,
						self.Secondary.ShootAnim
						)
	-- Remove 1 bullet from our clip
	-- Punch the player's view @@@FIX ME!!
	--self.Owner:SetAnimation( PLAYER_ATTACK1 )
	
 end
----------------------------------------------------------------------------++++++++++++++++++++++++++++++++++

/*---------------------------------------------------------
   Name: Recoil
   Desc: Moves playerview
---------------------------------------------------------*/
function SWEP:Recoil( recoil )
	-- Recoil
	-- @@@
	if ( self.Owner:IsNPC() ) then return end
	
	local ironOn = self.Weapon:GetNetworkedBool( "Ironsights", false ) == false
	local b1 = ( (game.SinglePlayer() and SERVER) or ( !game.SinglePlayer() and CLIENT ) )
	if b1 then
		-- Punch the player's view
		local amp		= 7.5211
		if (ironOn) then
			amp = amp*0.4114
		end
		local eyeang = self.Owner:EyeAngles()
		
		eyeang.pitch = eyeang.pitch - (recoil*0.98) -- get random number here
		self.Owner:SetEyeAngles( eyeang )

		local calcP		= (math.Rand(-0.2,-0.1) * recoil) * amp
		local calcY		= (math.Rand(-0.1,0.1) * recoil) * amp
		local calcR 	= (0) * amp
		--self:Talk(tostring(Angle( calcP, calcY, calcR )))
		-- NTS: Modify this HEAVLY.
		--	Make angle				[ P ] 	[ Y ] 	[ R ]
		self.Owner:ViewPunch( Angle( calcP, calcY, calcR ))
		-- Needs work @@@FIXME
	end
end

function SWEP:AddHeat( var )
	if self.Heat == nil then return end
	if not var then return end
	
	self.Heat = math.Clamp(self.Heat + var, 75, 255*3)

end

function SWEP:GetHeat()
	return self.Heat
end

function SWEP:TakePrimaryAmmo( num )
	local clipsize = self.Weapon:Clip1()
	if num > clipsize then
		-- Unfortunately a clip cant have a negative amount..
		num = clipsize
	end
	
	
	-- Doesn't use clips
	if ( clipsize <= 0) then 
	
		if ( self:Ammo1() <= 0 ) then return end	
		--			Dont remove till its fired @@@
		self.Owner:RemoveAmmo( num, self.Weapon:GetPrimaryAmmoType() )
		
		return 
	end
	
	self.Weapon:SetClip1( clipsize - num )	
	-- Animate
	-- self:DrawSeqClipSubtract()
	
end

function SWEP:TakeSecondaryAmmo( num )
	local clipsize = self.Weapon:Clip2()
	if num > clipsize then
		-- Unfortunately a clip cant have a negative amount..
		num = clipsize
	end
	
	
	-- Doesn't use clips
	if ( clipsize <= 0) then 
	
		if ( self:Ammo2() <= 0 ) then return end	
		--			Dont remove till its fired @@@
		self.Owner:RemoveAmmo( num, self.Weapon:GetSecondaryAmmoType() )
		
		return 
	end
	
	self.Weapon:SetClip2( clipsize - num )	
	-- Animate
	-- self:DrawSeqClipSubtract()
	
end

/*---------------------------------------------------------
   Name: SWEP:CSShootBullet			
   Desc: LEGACY Function
---------------------------------------------------------*/
function SWEP:CSShootBullet( dmg, recoil, numbul, cone )
	-- intercecpt oldshool cone calcs
	local c = self:CurrentCone(cone)
	self:ShootBullet( 1, dmg, recoil, numbul, c, self.Primary.Ammo, self.Primary.ShootAnim or ACT_VM_PRIMARYATTACK)
end

/*---------------------------------------------------------
   Name: SWEP:ShootEffects		
   Desc: semi-LEGACY Function
---------------------------------------------------------*/
function SWEP:ShootEffects( side, recoil, anim, snd, numshot )
	-- Purpose: Determine the Shoot effects for
	-- Primary, Secondary, or (eventually) Trinary weapons
	-- @@@ Expand me!
	--local eval = tobool(self.Weapon:GetVar("AkimboSide"))

	self:DebugTalk("\nShootEffects\n\tSIDE=" ..tostring(side)..", RECOIL"..tostring(recoil).."; ANIM: "..tostring(anim)..","..tostring(snd).."\n" )
	if (side == 1) then -- Determine side, include trinary, OCIW
		self:PrimaryShootEffects( recoil, anim, snd, numshot )
	elseif (side == 2) then
		self:SecondaryShootEffects( recoil, anim, snd, numshot )
	else
		ErrorNoHalt("Unknown side value: "..side.."\n")
	end
end

function SWEP:PrimaryShoot( ) -- IMPLEMENT!
	self:PrimaryShootEffects(nil, anim)
end

function SWEP:SecondaryShoot( ) -- IMPLEMENT!
	self:SecondaryShootEffects()
end

/*---------------------------------------------------------
   Name: SWEP:PrimaryShootEffects( )
   Desc: +attack1 has been pressed, and animations are being sent.
---------------------------------------------------------*/
function SWEP:PrimaryShootEffects( recoil, anim, snd, numshot )
		--ErrorNoHalt("PrimaryShootEffects: "..tostring(anim).."\n")
		if not numshot then 
			numshot = 1
			self:DebugTalk("Correcting number of shots to 1")
		end
		--self:Talk("PRIMARY")
		self.Weapon:SetNetworkedFloat( "LastPrimaryShootTime", CurTime() ) -- @@@ USEFUL

		local isempty = self.Weapon:Clip1() == 1 
		-- @@@VARIANCE @@@
		-- Prevent semi's from using this
		-- @@@ Feature Plan
		-- Model the spring to be based on 
		-- # of shots per tick to decide
		-- The variance!
		local go = 0
		if self.Primary.Automatic then
			go = 1 
		end
		
		if not self.FireVariance then
			self.FireVariance = GetConVar("swep_FireVarience"):GetFloat()
		end
		
		-- @@@DELAY VAR HERE!!!!
		local amount	= self.FireVariance
		-- 0.042 -- @@@@@@@
		local variance 	= amount * go
		-- Get a number thats +/- a scaler less than 0.05 usually
		local scaler = math.random(1 - variance, 1 + variance )
		-- Make this area more compact!
		
		self.Weapon:SetNextPrimaryFire( CurTime() + (self.Primary.Delay * scaler) )
										-- Remove 1 bullet from our clip
		if ( self.Owner:IsNPC() ) then return end
		--self:Recoil(dmg)
		
		-- @@@CUSTOM RECOIL ! 
		self:Recoil(recoil)
		self.Owner:MuzzleFlash()
		self:TakePrimaryAmmo( numshot )
		if (self.Chambers == true)then
			self.Primary.Chambered = false;
		end

	self:DebugTalk("[~] PrimaryShootEffects snd:"..tostring(snd).." anim:"..tostring(anim).." Numshot: "..tostring(numshot))
	if (snd == nil) then 
		local pri = self.Primary.Sound
		if isempty then
			pri = self.Primary.DryFireSound or self.Primary.Sound or Sound("weapon_Pistol.Single")
		end
		snd = pri or self.Primary.Sound or Sound("weapon_Pistol.Single")
	--elseif isempty then
		--snd = self.Primary.DryFireSound or self.Primary.Sound
	end
	
	if anim ~= nil then
		if type(anim) == "boolean" then
			if isempty then
				anim = "DRYFIRE"
			else
				anim = "PRIMARY"
			end
		end
		if type(anim) == "number" and anim == 0 then
			anim = ""
		end
		-- VMact can do anything we need animation wise
		self:VMact( anim, self.Primary.PBR, snd )
		
	end
	
	if isempty and self.Primary.DryMagEject == true then
		self:DropMagPrimary()
	end
end

function SWEP:SecondaryShootEffects( recoil, anim, snd, numshot )
		if not numshot then numshot = 1 end
		--self:Talk("SECONDARY")
		self.Weapon:SetNetworkedFloat( "LastSecondaryShootTime", CurTime() )
		
		local isempty = self.Weapon:Clip1() == 1 
		
		-- Prevent pistols from using this
		local go = 0
		if self.Secondary.Automatic then go = 1 end
		
		-- @@@DELAY VAR HERE!!!!
		local amount	= 0.11--0.357
		local variance 	= amount * go
		
		
		self.Weapon:SetNextSecondaryFire( CurTime() + self.Secondary.Delay * math.random(1-variance, 1+variance ) )
										-- Remove 1 bullet from our clip
		--self:SecondaryShootEffects(nil, forcedAnim)
		self.Owner:MuzzleFlash()
	 

		if ( self.Owner:IsNPC() ) then return end
		--self:Recoil(dmg)
		
		-- @@@CUSTOM RECOIL ! 
		self:Recoil(recoil)
		self.Owner:MuzzleFlash()
		self:TakeSecondaryAmmo( numshot )
		if (self.Chambers == true)then
			self.Secondary.Chambered = false;
		end


	self:DebugTalk("[~] SecondaryShootEffects snd:"..tostring(snd).." anim:"..tostring(anim).." Numshot: "..tostring(numshot))
	if (snd == nil) then 
		local pri = self.Secondary.Sound
		if isempty then
			pri = self.Secondary.DryFireSound
		end
		snd = pri or self.Secondary.Sound or Sound("weapon_Pistol.Single")
	end
	
	if anim ~= nil then
		if type(anim)=="boolean" then
			anim = "SECONDARY"
		end
		if type(anim) == "number" and anim == 0 then
			anim = ""
		end
		-- VMact can do anything we need
		self:VMact( anim, self.Secondary.PBR, snd )
	end
	
	if isempty and self.Secondary.DryMagEject == true then
		self:DropMagSecondary()
	end
end

/*---------------------------------------------------------
   Name: SWEP:ShootBullets
   Desc: An attack has been sent
   @@@Ensure no owner needed!!
---------------------------------------------------------*/
function SWEP:ShootBullet( side, dmg, recoil, numbul, cone, ammo, forcedAnim, forceAmmoUsage)
	--if (self.Weapon:Clip1() <= 0 and self.Primary.ClipSize > 0) then self:Reload() return false end
	-- Add side consideration for effects
	if (side == nil) then
		side = 1
	end
	numbul 	= numbul 	or 1 -- Doesnt Have to be sent
	cone 	= self:CurrentCone(cone) or cone or 0.01 -- Doesnt have to be sent 
	if forcedAnim == nil then
		-- I cant remember the relivance, but very important?
		forcedAnim = true
	end
	-- self.Weapon:setVar("AkimboSide") == false
<<<<<<< HEAD
	local Trace = self.Owner:GetEyeTrace() -- @@@Use different trace style!!!
	local ent = Trace.Entity
	local Distance = Trace.HitPos:Distance( self.Owner:GetShootPos() )
	
	if ent:IsValid() and (ent:IsNPC() ) and Distance < (self.Range or 256) and self:Visible(ent) and not self.Owner:KeyDown(IN_USE) then
		self:AimAssist(ent) -- Give a clean shot
		self:DebugTalk("Using aim assist for targeting")
	end
=======
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67

	-- local DEBUG = true
	-- FOR self.DEBUGING AND FUN LOL
	if tobool(tonumber(self.DEBUG)) then
		CreateClientConVar("swep_cone", self.Primary.Cone, false, true) -- This can prolly get moved
		cone = GetConVarNumber("swep_cone")
	end

	local Ammo = AmmoTypes[ammo] or 3  -- AMMO doesn't have to be sent
	local bullet = {}
	local f = 0
	-- Aimvector:  -1 -> 1  (-90 to 90)
	--
	local AngTotal = 60
	local correction = Vector(0,0, math.max(math.min( math.abs( self.Owner:GetViewPunchAngles().pitch ) / AngTotal , 1 ), 0) )
	local 	dir1 = self.Owner:GetAimVector()
			dir1:Add( correction )
	local src = self.Owner:GetShootPos()			-- Source
	
	self:DebugTalk("\nSHOOT BULLET\n\tdir: "..tostring(dir1).." , src: "..tostring(src).." , Xcone: "..tostring(cone*0.5))
	
	bullet.Num 			= numbul
	bullet.Src 			= src
	bullet.Dir 			= dir1		-- Dir of bullet
	bullet.Spread 		= Vector( cone*0.5, cone*1, 0 )	
	-- Aim Cone
	bullet.Tracer		= 2		-- Show a tracer on every 1/x bullets   
	bullet.TracerName	= Tracers[ GetConVarNumber("swep_tracer") ]
	-- LETS USE SOME CALCULATIONS
	bullet.Force		= (dmg/3.336) -- Force applied to target
	bullet.Damage		= dmg
	bullet.AmmoType		= Ammo
	
	//PenetrateBullet	
	bullet.Callback		= DoCallback -- Yee
	--bullet.Callback		= OnHeadshot -- Yee
	
	self.Owner:FireBullets( bullet )
	
	-- @@@BELOW HERE NEEDS TO BE INDEPENDANT FUNCTION(S)
	
	-- Arm stability... so yes akimbo
	self.Weapon:SetNetworkedFloat( "LastShootTime", CurTime() ) --Primary, Secondary, Trinary
	-- @@@ Weapon:LastShootTime() instead? integrate?

	-- Check the side of fire 
	if numbul > 1 and ( Ammo == 7 or (nil ~= forceAmmoUsage and isint(forceAmmoUsage)) ) then -- Add acception to shotguns
		numbul = forceAmmoUsage or 1
	end

	
	self:ShootEffects(side, recoil, forcedAnim, nil, numbul)
	--[[
	local fx 		= EffectData()
	fx:SetEntity(self.Weapon)
	fx:SetOrigin(self.Owner:GetShootPos())
	fx:SetNormal(self.Owner:GetAimVector())
	fx:SetAttachment(self.MuzzleAttachment)
	util.Effect(self.MuzzleEffect,fx)		-- Additional muzzle effects
	--]]
	
	-- @@@ LEGACY (Use CallBack)
	self:BreakDoor() -- If applicable, it is a safe call
	if (side == 1 and self.Primary.Ignite == true) then
	--	self:IgniteTarget( math.Rand(11,120), self.Primary.Damage*1.5 )
	elseif (side == 2 and self.Secondary.Ignite == true) then
	--	self:IgniteTarget( math.Rand(11,120), self.Secondary.Damage*1.5 )
	end

end

function DoCallback( ply, tr, dmginfo )
	-- A hub for bullet callback functions
	--ErrorNoHalt("Im at callback")
	OnHeadshot(ply, tr, dmginfo)
	
	if GetConVar("swep_penetration"):GetBool() then
		PenetrateBullet(ply, tr, dmginfo)
	end
	
	-- @@@IGNITE TARGET CODE HERE
	local ent
	if ply:IsWeapon() then
		ent = ply
	else
		ent = ply:GetActiveWeapon()
	end
	
	if (ent).Primary.Ignite == true then
		IgniteTarget( ply,tr.Entity, math.Rand(11,120), dmginfo:GetDamage()*1.5)
	end
	

end

function SWEP:BreakDoor()
	-- Credit: WORSHIPPER
	local trace = self.Owner:GetEyeTrace();
	local f1 = trace.HitPos:Distance(self.Owner:GetShootPos()) > 250 
	local f2 = (self.DestroyDoors ~= true)

	if f1 or f2 then return end

	if trace.Entity:GetClass() == "prop_door_rotating" and (SERVER) then
		-- Important ordering for the effect
		-- Just think about it for a bit...
		-- #RaceConditions
		trace.Entity:Fire("open", "", 0.001)
		trace.Entity:Fire("unlock", "", 0.001)

		local pos = trace.Entity:GetPos()
		local ang = trace.Entity:GetAngles()
		local model = trace.Entity:GetModel()
		local skin = trace.Entity:GetSkin()

		trace.Entity:SetNotSolid(true)
		trace.Entity:SetNoDraw(true)

		local norm = Vector(pos - self.Owner:GetPos()):Normalize()
		local push = 10000 * (norm or Vector(1,1,1))
		local ent = ents.Create("prop_physics")

		ent:SetPos(pos)
		ent:SetAngles(ang)
		ent:SetModel(model)
		ent:SetCollisionGroup( COLLISION_GROUP_DEBRIS_TRIGGER )

		if(skin) then
			ent:SetSkin(skin)
		end

		ent:Spawn()

		self:SafeTimer(0.002, function()
							ent:SetVelocity(push)
						end)               
		self:SafeTimer(0.002, function() 
							ent:GetPhysicsObject():ApplyForceCenter(push)
						end)
		self:SafeTimer(51, function() -- Consider changing the timing or making CONVAR
							trace.Entity:SetNotSolid(false)
							trace.Entity:SetNoDraw(false)
							ent:Remove()
						end)
	end
end
 
function IgniteTarget( atkr, ent, dur , radius ) -- Not originally a feature of Fiery base, but how couldnt I?

	local f1 = ent == nil or not ent:IsValid()
	if f1 or not atkr:IsValid() then return end
	local f2 = (ent:GetPos()):Distance(atkr:GetShootPos()) > 550 
	local f3 =  not ent:IsNPC() and not ent:IsPlayer()
	
	--self:DebugTalk(tostring(f1)..", "..tostring(f2)..", "..tostring(f3).."\n")
	if f2 or f3 then return false end
	
	if not dur then
		dur = 10
	end
	
	if not radius then
		radius = 15
	end

	ent:Ignite(dur, radius)
	
	return true
end

function SWEP:ShootPhysicalBullet( dmg, recoil, numbul, cone, ammo, forcedAnim, forceAmmoUsage )
	--local aim = self.Owner:GetAimVector() -- look into it
	--local aim = self.Owner:GetShootPos() 
	
	if (side == nil) then
		side = 1
	end
	numbul 	= numbul 	or 1 -- Doesnt Have to be sent
	cone 	= self:CurrentCone(cone) or cone or 0.01 -- Doesnt have to be sent
	if forcedAnim == nil then
		-- I cant remember the relivance, but very important
		
		forcedAnim = true
	end
	
	local Ammo = AmmoTypes[ammo] or 3  -- AMMO doesn't have to be sent
	local aim = self.Owner:GetAimVector()
	local side = aim:Cross(Vector(0,0,1))
	local up = side:Cross(aim)
	local pos = self.Owner:GetShootPos() +  aim * 25 + side * 5 + up * -6	--offsets so it spawns from the muzzle>
	local power = self.Primary.Power or 36000
	
	local velocity_multp = power * (GetConVarNumber("phys_timescale") or 1) -- FIX ME! @@@PHYS
	local projectile = ents.Create("Bullet_round")
	
	if !projectile:IsValid() then return false end
	
	projectile:SetAngles(aim:Angle())
	projectile:SetPos(pos)
	projectile:SetOwner(self.Owner)
	projectile:SetOrgVec( self.Owner:GetPos() )
	projectile:SetOrgVel( self.Owner:GetVelocity() )
	projectile:Spawn()
	projectile:Activate()
	projectile:SetVelocity( projectile:GetForward()* velocity_multp )
	
	--self:Recoil() -- Translate funtion
	
	self.Weapon:SetNetworkedFloat( "LastShootTime", CurTime() ) --Primary, Secondary, Trinary

	-- Check the side of fire
	if numbul > 1 and ( Ammo == 7 or (nil ~= forceAmmoUsage and isint(forceAmmoUsage)) ) then
		numbul = forceAmmoUsage or 1
	end
	self:ShootEffects(side, recoil, forcedAnim, nil, numbul)
end

------------ THINK -----======================================================+++++++++++++++++++++++++++++++++
local lastval = nil;
/*---------------------------------------------------------
	@@@THINK
   Think about, idk, stuff I guess..
---------------------------------------------------------*/
function SWEP:Think()

	--self.ViewModelFOV		= GetConVarNumber("cl_swep_FOV")
	--self:SetFOV( GetConVarNumber("cl_swep_FOV"), 0.33 )
	--
	--self:Talk("TICK")
	--[[
	if ( CLIENT ) then
		self:DrawHUD()
		-- Required for real time HUD
	end
	--]]
<<<<<<< HEAD
	self:StandardThink()
	-- local wl = self.Weapon:WaterLevel()

	
=======
	self:ShotgunThink()
	self:IdleThink()
	self:RecoilThink()
	-- local wl = self.Weapon:WaterLevel()

	--self:HeatThink()
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	--[[
	if (CLIENT) then
	local wep = self.Weapon:GetViewModel()
		if (self.Owner and wep:GetActivity() == 0) then
			self:Idle()
		end
	end
	--self:BoneThink()
	--self:NextThink(CurTime());  
	--return true 
	--]]
<<<<<<< HEAD

end

/*---------------------------------------------------------
	@@@THINK STANDARD
   Think about, idk, STANDARD stuff I guess..
   (Exists so custom thinks dont wreck code)
---------------------------------------------------------*/
function SWEP:StandardThink()
	self:ShotgunThink()
	self:IdleThink()
	self:RecoilThink()
	--self:HeatThink()
=======
	
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	self:ArmsThink()
	--self:AimAssistThink() 
	-- ^ This is now controlled under SecondaryAttack
	-- (And requires secondary attack be automatic)
end

/*---------------------------------------------------------
   Think Moduals
---------------------------------------------------------*/
function SWEP:BoneThink() -- smh
	if not self.SupressBones then return end
	if not self.UseHands then print("Suppressing bones YET, not using hands?\n"); return end
	
	--Msg("." .. tostring(self.UseHands))
	
	--self.UseHands = true
	self:UpdateBones()
	
end

function SWEP:IdleThink()
	if not (self.DoesIdle)  then return end -- or self.DoesIdle == false
--ErrorNoHalt("[i] self.DoesIdle == "..tostring(self.DoesIdle).."\n")
	-- self:DebugTalk("\tN1 NextIdle: "..tostring(NextIdle).. " VS "..tostring(CurTime()).."\n")
	if (self.Weapon:GetNetworkedBool( "reloading", true)) then
		NextIdle = CurTime() + self:GetSeqDur()
		--self:DebugTalk("\tN2 NextIdle: "..tostring(NextIdle).. " VS "..tostring(CurTime()).."\n")
		return
	end
	
	if (NextIdle == CurTime()) then
		--self:DebugTalk("\tN3 NextIdle: "..tostring(NextIdle).. " VS "..tostring(CurTime()).."\n")
		self:Idle()
	end
	-- ###IdleTHINK
--	chat.AddText(tostring(self.Weapon:SequenceDuration()))
end

function SWEP:RecoilThink()
	-- See credits and discription in physics.lua
	if false or not self.Owner then return end --	Whos feeling the recoil even?
	
	if self.Owner:KeyPressed( IN_ATTACK )  and not self.isFiring then
        --print("Start Burst")
        self.isFiring = true
        self.RecoilDelta = CurTime()
    elseif self.Owner:KeyReleased( IN_ATTACK ) and self.isFiring then
        self.isFiring = false
        --print("End Burst")
    end
end

function SWEP:ShotgunThink()
	if not self:IsShotgun() or not self.Weapon:GetNWBool( "reloading", false) then return end
	local stop = self.Weapon:Clip1() >= self.Primary.ClipSize or self.Owner:GetAmmoCount( self.Primary.Ammo ) <= 0
	
	if stop or self.Owner:KeyDown(IN_USE) then  -- or (self.Owner:KeyReleased(IN_RELOAD) and not self.Owner:KeyPressed(IN_RELOAD))
		
		if self.Owner:KeyReleased(IN_RELOAD) or self.Owner:KeyDown(IN_USE) or stop then
			--self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
			self:CancelShotgunReload()
			return
		end
	end

	if stop then return end -- 	self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
	
	if self.Weapon:Clip1() > self.Primary.ClipSize then
		-- Correct flawed logic
		self.Weapon:SetClip1(self.Primary.ClipSize)
		self.Weapon:SetVar("PrimaryMagOut", false)
	end

	if self.Weapon:GetNWBool( "reloading", false) then
	
		if self.Weapon:GetNetworkedInt( "reloadtimer") < CurTime() then
			--if self.unavailable then return end

			self.Weapon:SetNetworkedInt( "reloadtimer", CurTime() + 0.45 )
			
			self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
			self.Weapon:EmitSound(self.ReloadSound or "")
			local t = self:GetSeqDur()
			--self:EmitSound(Sound("Weapon_Shotgun.Reload"))
			self.Weapon:SetNextPrimaryFire(CurTime() + (t*0.5))
			self.Weapon:SetNextSecondaryFire(CurTime() + (t*0.5))
			
			self.Weapon:SetVar("reloadtimer", CurTime() + t)	
			
			self:SafeTimer( t*0.85, function()
				-- @@@ CHAMBERING PLUG HERE!
				if self.Weapon:Clip1() >= self.Primary.ClipSize then return end
				if not self.Weapon:GetNWBool( "reloading", false) then 
					self:DebugTalk("I wanted to reload more but reloading is false...\n")
					return 
				end
				self.Owner:RemoveAmmo( 1, self.Primary.Ammo, false )
				self.Weapon:SetClip1(  self.Weapon:Clip1() + 1 )
				self.Weapon:SetVar("PrimaryMagOut", false)
				self:DebugTalk("<> Completed a shotgun thought #".. self.Weapon:Clip1() .." <> \n")
			end)
		end
	end
end

function SWEP:ArmsThink()
	-- Considers arm position
	local b0 = (CurTime() ~= self.Weapon:LastShootTime())
	local b1 = self:GetIronsights()
	local b2 = self:AreArmsDown()
	local b3 = not(self.Weapon:GetVar("PrimaryMagOut") and self.Weapon:GetVar("SecondaryMagOut"))
	self.InSpeed2 = self.InSpeed -- We need to track changes
	--if b1 == true and b2 == false then return end

	--if not self.ArmAngle and not self.ArmOffset then return end
	if b2 and b0 then
		self:GetArmPosition( Vector(0,0,0), Angle(0,0,0) )
		--self:GetViewModelPosition( Vector(0,0,0), Angle(0,0,0) )
	elseif self.InSpeed == true then
		self.InSpeed = false
		 -- See GetArmPos for more on InSpeed var
	end
	
	-- When we come off
	if self.InSpeed2 != self.InSpeed then
	
		if self.InSpeed == true then
			self:SetHoldType( self.RunHoldType or "normal" )
		elseif b3 then
			if b1 then
				--self:SafeTimer(IRONSIGHT_TIME/4, function()
					self:SetHoldType( self.HoldType )
				--end)
			else
				--self:SafeTimer(IRONSIGHT_TIME/4, function()
					self:SetHoldType( self.HoldType2 )
				--end)
			end
		end
		--self:Talk("Yee? "..tostring(self.InSpeed).." "..tostring(b1).." "..tostring(b2).." | "..tostring(self.InSpeed).." << "..tostring(self.InSpeed2).."\n")
	end
	
end

-- The Heat system is on a fernheight scale, tuned only for it!!
function SWEP:HeatThink()
	if not (self.Heat) then return end
	-- Temperature in Ferenheight, just because it works out better
	local bef = self.Heat
	local cur_base = self:GetHeat_Min()
	
	--self.Owner:WaterLevel() > 2
	if (self.Heat <= 0) then
		self.Heat = cur_base
	end	
	local go = 0
	if (cur_base > self.Heat) then
		go = 1
	end

			-- Flipping
	local under_base = 	1-( 2* go ) -- Its colder than what it should be
	
	self.Heat = math.Clamp(self.Heat - (under_base*0.01), cur_base, 255*3)
	
	
	-- DO AFFECTS
	
	
	--self:Talk("Before: " .. tostring(bef) .. " |After: " .. tostring(self.Heat))
end

function SWEP:GetHeat_Min() -- Yes, its calculated
	local x = self.Base_Heat
	local o_wtrlvl = self.Owner:WaterLevel()
		if o_wtrlvl > 2 then -- Owner under water to some extent
			local w_wtrlvl = self.Weapon:WaterLevel()
			x = x - ( 7 * w_wtrlvl )
			
			
			if self.Weapon:IsOnFire() and w_wtrlvl >= 3 then
				self.Weapon:Extinguish()
			end
			if self.Owner:IsOnFire() and o_wtrlvl >= 3 then
				self.Owner:Extinguish()
				-- I know I know, this belongs in a Take Damage function in a gamemode
			end
			-- Lower the min heat based on how much of the WEAPON is under water
		elseif self.Owner:IsOnFire() or self.Weapon:IsOnFire() then 
			-- If your on fire (and not in water OBVIOUSLY) 
			-- Set to highest auto-ignition temperature
			local for_wep 			= tonumber(self.Weapon:IsOnFire()) * ( 475- math.min(x, 474) )
			local owner_on_wep		= tonumber(self.Owner:IsOnFire())  * 7
			x = x + for_wep + owner_on_wep
		end
		
	return x
end

------------ DRAWING  -----===================================================+++++++++++++++++++++++++++++++++

--
/*---------------------------------------------------------
   Name: SWEP:DrawWorldModel() 
   Desc: Draws the world model (not the viewmodel).
---------------------------------------------------------*/ 
function SWEP:DrawWorldModel()
	local b1 = self.WorldModelHoldFix == true
	
	if b1 then
		local hand, offset, rotate
		
		if not IsValid(self.Owner) then
			self:DrawModel()
			return
		end
		
		hand = self.Owner:GetAttachment(self.Owner:LookupAttachment("anim_attachment_rh"))
		local x = hand.Ang:Right() 		* (self.WMx or 2)
		local y = hand.Ang:Forward() 	* (self.WMy or -4)
		local z = hand.Ang:Up() 		* (self.WMz or -0.25)
		--local x = hand.Ang:Right() 		* 2
		--local y = hand.Ang:Forward() 	* -4
		--local z = hand.Ang:Up() 		* -0.5

		offset = x + y + z
		
		hand.Ang:RotateAroundAxis(hand.Ang:Right(), 0)
		hand.Ang:RotateAroundAxis(hand.Ang:Forward(), 0)
		hand.Ang:RotateAroundAxis(hand.Ang:Up(), 0)
		
		self:SetRenderOrigin(hand.Pos + offset)
		self:SetRenderAngles(hand.Ang)
	end
	
	self:DrawModel()
end

--]]

--[[
function SWEP:GetTracerOrigin() -- @@@TRACER START
	local ans -- CLIENT SIDE
	--	local vm = ply:GetViewModel()
	-- local obj = vm:LookupAttachment( "muzzle" )
	-- local muzzlepos = vm:GetAttachment( obj )
	local gun = self.Weapon
	local aID --gun:LookupAttachment("ValveBiped.flash")
	if ~ then
		aID = "1"
	else
		aID = "muzzle"
	end
	local pos = gun:GetAttachment(aID) -- Should be "1" for CSS models or "muzzle" for hl2 models
	ans = pos.Pos
	ErrorNoHalt("TracerOrigin: "..tostring(ans).."\n")
	return ans
end
--]]

function SWEP:CustomAmmoDisplay()
	self.AmmoDisplay = self.AmmoDisplay or {} 
 
	self.AmmoDisplay.Draw = true //draw the display?
 
	if ( self.Primary.ClipSize > 0 ) then
		self.AmmoDisplay.PrimaryClip = self:Clip1() //amount in clip
		--if not(self.Akimbo) then
			self.AmmoDisplay.PrimaryAmmo = self:Ammo1() //amount in reserve
		--else
		--	self.AmmoDisplay.PrimaryAmmo = self:Clip2() //amount in reserve
		--end
	end
	
	if ( self.Secondary.ClipSize > 0 ) then
		self.AmmoDisplay.SecondaryClip = self:Clip2()
		if (self.Akimbo) and 
		not(self.Weapon:GetPrimaryAmmoType() == self.Weapon:GetSecondaryAmmoType()) then
			self.AmmoDisplay.SecondaryAmmo = self:Ammo2()
		end
	end
 
	return self.AmmoDisplay //return the table
end

function SWEP:DrawStockHUD() -- @@@Relocate and integrate?

	// No crosshair when ironsights is on
	if ( self.Weapon:GetNetworkedBool( "Ironsights" ) == true ) then return end

	local x = ScrW() / 2.0
	local y = ScrH() / 2.0
	local scale = 10 * self.Primary.Cone
	
	// Scale the size of the crosshair according to how long ago we fired our weapon
	local LastShootTime = self.Weapon:GetNetworkedFloat( "LastShootTime", 0 )
	scale = scale * (2 - math.Clamp( (CurTime() - LastShootTime) * 5, 0.0, 1.0 ))
	
	surface.SetDrawColor( 0, 255, 0, 255 )
	
	// Draw an awesome crosshair
	local gap = 40 * scale
	local length = gap + 20 * scale
	surface.DrawLine( x - length, y, x - gap, y )
	surface.DrawLine( x + length, y, x + gap, y )
	surface.DrawLine( x, y - length, x, y - gap )
	surface.DrawLine( x, y + length, x, y + gap )
	
	--ErrorNoHalt("\n DrawHud")

end

/*---------------------------------------------------------
	Checks the objects before any action is taken
	This is to make sure that the entities haven't been removed
---------------------------------------------------------*/
function SWEP:DrawWeaponSelection( x, y, wide, tall, alpha ) -- needs work @WORK
	-- @@@ Needs work!
	draw.SimpleText( self.IconLetter, "CSSelectIcons", x + wide/2, y + tall*0.2, Color( 255, 210, 0, 255 ), TEXT_ALIGN_CENTER )
	
	-- try to fool them into thinking they're playing a Tony Hawks game
	draw.SimpleText( self.IconLetter, "CSSelectIcons", x + wide/2 + math.Rand(-4, 4), y + tall*0.2+ math.Rand(-14, 14), Color( 255, 210, 0, math.Rand(10, 120) ), TEXT_ALIGN_CENTER )
	draw.SimpleText( self.IconLetter, "CSSelectIcons", x + wide/2 + math.Rand(-4, 4), y + tall*0.2+ math.Rand(-9, 9), Color( 255, 210, 0, math.Rand(10, 120) ), TEXT_ALIGN_CENTER )
	
end

------------ IRON SIGHTS  -----===============================================+++++++++++++++++++++++++++++++++

/*---------------------------------------------------------
	SetIronsights
---------------------------------------------------------*/

/*---------------------------------------------------------
   Name: GetViewModelPosition
   Desc: Allows you to re-position the view model
   Any intended changes to the position MUST come
   through this WEP HOOK to take affect!
---------------------------------------------------------*/
function SWEP:GetViewModelPosition( pos, ang )
	
	if ( !self.IronSightsPos ) then 
		if self.Akimbo then return end
		--self:DebugTalk("Leaving GetViewModelPosition @ START... "..tostring(pos).." & "..tostring(ang).."\n")
		--self:DebugTalk("Current values: "..tostring(self.IronSightsPos).." & "..tostring(self.IronSightsAng).."\n\n\n")
		local np, na = self:GetIronData(false) -- Oh well here you go...
		
		--return pos, ang 
		return np, na 
	else
		--self:DebugTalk("POS & ANG IN: "..tostring(pos).." & "..tostring(ang).."\n\n")
	end
	
	if self:AreArmsDown() then
		-- Need to work with this more
		-- Should be an additive to the pos and ang
		-- To decrease sharp changes!7
		return self:GetArmPosition(pos, ang) -- I need this to make ARMS sure it works
	end

	local bIron 	= self.Weapon:GetNetworkedBool( "Ironsights" )
	local Right 	= ang:Right()
	local Up 		= ang:Up()
	local Forward 	= ang:Forward()
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		if ( bIron ) then 
			self.SwayScale 	= 0.3
			self.BobScale 	= 0.1
		elseif self.Owner:KeyDown( IN_SPEED ) and not self:IsOwnerMoving() then
			self.SwayScale 	= 2.0
			self.BobScale 	= 2.0 -- Consider alt
		else
			self.SwayScale 	= 1.0
			self.BobScale 	= 1.0
		end
	
	end
	
	local fIronTime = self.fIronTime or 0

	if not bIron and (fIronTime < CurTime() - IRONSIGHT_TIME) then 
		--self:DebugTalk("Leaving GetViewModelPosition @ Change Check...\n\n")
		return pos, ang 
	end
	
	local Mul = 1.0
	
	if ( fIronTime > CurTime() - IRONSIGHT_TIME ) then
			-- Possible idle spot
		Mul = math.Clamp( (CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1 )
		
		if (!bIron) then
			Mul = 1 - Mul
		end
	end
	
	local Offset	= self.IronSightsPos
	
	if ( self.IronSightsAng ) then
		ang = ang * 1
		ang:RotateAroundAxis( ang:Right(), 		self.IronSightsAng.x * Mul )
		ang:RotateAroundAxis( ang:Up(), 		self.IronSightsAng.y * Mul )
		ang:RotateAroundAxis( ang:Forward(), 	self.IronSightsAng.z * Mul )
	end
	
	pos = pos + Offset.x * Right 	* Mul
	pos = pos + Offset.y * Forward 	* Mul
	pos = pos + Offset.z * Up 		* Mul

	--self:DebugTalk("~Leaving GetViewModelPosition @ END...\n"..tostring(pos).." & "..tostring(ang).."\n\n")
	return pos, ang
	
end

function SWEP:GetArmPosition( pos, ang )
--self:Talk("PRE: "..tostring(pos).." \n& "..tostring(ang))
	local DashDelta = 1 -- self:GetIronsights()
	--local b1 	= self:AreArmsDown()
	--local b1 	= self.Owner:KeyDown( IN_SPEED )
	local b1 	= true -- Tester
--self:Talk("@ArmPos B1: "..tostring(b1).." & "..tostring(self.Weapon:GetNetworkedBool( "Ironsights" )))
	if b1 == true and self.ArmAngle and self.ArmOffset then
		
		if not self.InSpeed then
			self.InSpeed = true
			self.SwayScale 	= self.RunSway
			self.BobScale 	= self.RunBob
			self:Idle()
		end
		
		if (!self.DashStartTime) then
			self.DashStartTime = CurTime()
		end
		
		DashDelta = math.Clamp( ((CurTime() - self.DashStartTime) / 0.1) ^ 1.2, 0, 1 ) -- @@@OPTIMIZE: *10 rather than /0.1
		
	else
	
		if self.InSpeed then
			self.InSpeed = false
			self.SwayScale 	= 1.0
			self.BobScale 	= 1.0
		end

		if ( self.DashStartTime ) then
			self.DashEndTime = CurTime()
		end
	
		if ( self.DashEndTime ) then
		
			DashDelta = 1 - math.Clamp( ((CurTime() - self.DashEndTime) / 0.1) ^ 1.2, 0, 1 )
			if ( DashDelta == 0 ) then 
				self.DashEndTime = nil
			end
		end
		self.DashStartTime = nil
	end
	
	if ( DashDelta ) then
			local Offset = self.ArmOffset --or Vector(0,0,0)
			
			if Offset == nil then
<<<<<<< HEAD
				-- Correct this BS 
=======
				-- Correct this BS
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
				-- @@@BS
			end
			
			if ( self.ArmAngle ) then
				ang = ang * 1
				ang:RotateAroundAxis( ang:Right(), 		self.ArmAngle.x * DashDelta )
				ang:RotateAroundAxis( ang:Up(), 		self.ArmAngle.y * DashDelta )
				ang:RotateAroundAxis( ang:Forward(), 	self.ArmAngle.z * DashDelta )
			end
			
			local Right 	= ang:Right()
			local Up 		= ang:Up()
			local Forward 	= ang:Forward()
			
			pos = pos + Offset.x * Right	* DashDelta
			pos = pos + Offset.y * Forward	* DashDelta
			pos = pos + Offset.z * Up		* DashDelta
	end
	--self:Talk("POS: "..tostring(pos).." \n& "..tostring(DashDelta).."\t Start: "..tostring(self.DashStartTime).." End: "..tostring(self.DashEndTime).."\n\n" )
	return pos, ang
end

function SWEP:SetIronDataFromFile( fname, path ) -- FINISH ME!
	-- Finish soulutions for all kinds of files!!
	if type(fname) != "string" or type(fname) != "string" then ErrorNoHalt("Bad input! "..tostring(fname)) return end
	local a = {}
	
	if path == nil then
		path = "DATA"
	end
	
	self:Talk("\t>> FNAME: ".. tostring(fname).. "\n")
	a = file.Read(fname, path)
	self:Talk("\n\nContents:")
	if a == nil or a == {} then
		self:Talk("A came back nil or {}!")
	else
		self:Talk("~\n"..tostring(a).."\n~\nTYPE: "..type(a).."\n")
	end
	-- METHOD 1.
	local p1 = 28
	local p2 = (string.find(a, ")", p1, true))
	
	local c1 = string.Replace(string.sub(a,p1,p2), ",", "")  
	c1 = string.Replace(string.Replace(c1,")",""),"(","")
	
	local p3 = (string.find(a,"SWEP.IronSightsAng = Vector(",1,true))+27
	local p4 = (string.find(a, ")", p3, true))
	
	local c2 = string.Replace(string.sub(a,p3,p4), ",", "")
	c2 = string.Replace(string.Replace(c2,")",""),"(","")
	self:Talk("SUBS: 1\n"..tostring(c1).."\n\nSUBS: 2\n"..tostring(c2).."\n\n")
	-- Now convert to floats
	local pos = util.StringToType( c1 , "Vector")
	local ang = util.StringToType( c2 , "Vector")
	
	self.IronSightsPos = Vector(pos) or pos
	self.IronSightsAng = Vector(ang) or ang
	
	self:Talk("\nPOS: \t".. tostring(pos).." -> "..tostring(self.IronSightsPos).." as a '"..tostring(type(self.IronSightsPos)).. "'\n")
	self:Talk("ANG: \t".. tostring(ang).." -> "..tostring(self.IronSightsAng).. " as a '"..tostring(type(self.IronSightsAng)).. "'\n\n")
	
	return pos, ang
end

function SWEP:GetIronData( known ) -- FINISH ME!
<<<<<<< HEAD
	if tobool(self.Thrown == true) then return end
=======
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	self:Talk("Getting Iron Sight data")
	-- Get the ironsight file for the view model
	local vmp = self.ViewModel
	--local smp = string.Replace(self.Folder, "weapons/", "") .. ".txt"
	local smp = self.ClassName.. ".txt"
<<<<<<< HEAD
	-- "models/weapons/cstrike/c_smg1.mdl" 
=======
	-- "models/weapons/cstrike/c_smg1.mdl"
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	local path = "ironsights/"
	local path2 = "ironsights/Fiery_Ironsights/"..smp
	local CModelGiven = string.find(vmp,"/c_")
	local fname = string.Replace(string.Replace(vmp,"models/weapons/cstrike/", ""),".mdl", ".txt") 
	path = "ironsights/" .. fname
	
	local b1 = file.Exists(path2, "DATA")
	local b2 = file.Exists(path, "DATA")
	local b3 = (known == true)
	--self:Talk("<> Is dir? "..tostring(file.IsDir("ironsights/Fiery_Ironsights", "DATA")).."\n\n")
	self:Talk(path2.."\n\texists?1 \t"..tostring(b1))
	self:Talk(path.." '\n\texists?2 \t"..tostring(b2))
	self:Talk("b3? \n\texists?3 \t"..tostring(b3).."\n")
	
	local pos, ang
	-- Look for sights in path 2 then path 1
	-- 
	if (b1) then
		pos, ang = self:SetIronDataFromFile(path2)

	elseif (b2) then
		pos, ang = self:SetIronDataFromFile(path)

	elseif (b3) then 
		-- Called by Debuging
		-- Build the ironsights 
		self:DefaultAnIronSightsFile()
		self:Talk("Defaulting Iron File: ")
	else
		self:Talk("Couldn't find ironsight file for: " .. fname)

	end
	
	self:Talk("\n>POS: \t"..tostring(self.IronSightsPos).." \tas a '"..tostring(type(self.IronSightsPos)).. "'\n")
	self:Talk(">ANG: \t"..tostring(self.IronSightsAng).. " \tas a '"..tostring(type(self.IronSightsAng)).. "'\n\n")
	
	return pos, ang
end

function SWEP:DefaultIronSightsFile() -- @@@ EXPAND ME!

		if not(file.Exists("DATA/ironsights")) then
			file.CreateDir("ironsights")
		end
		-- Create a file type 
		
		-- make sure its not somehow false
		if (self.IronSightsPos) then
			local content = ""
			local with = self.IronSightsPos
			local x,y,z = with.x,with.y,with.z
			content = "SWEP.IronSightsPos = Vector("..x..","..y..","..z..")"
			
			if (self.IronSightsAng) then
			with = self.IronSightsAng
			x,y,z = with.x,with.y,with.z
			content = content  .. "\n" .. "SWEP.IronSightsAng = Vector("..x..","..y..","..z..")"
			end
			file.Write("/ironsights/Fiery_Ironsights/" .. fname, content) 
			-- Write an ironsight file if it doesnt exist
		
		else
			self:DebugTalk("Bad function call: SWEP.IronSightsPos isnt set!!")
		end
end -- end func 

function SWEP:SetIronsights( b ) -- @@@
	local def = GetConVarNumber("cl_swep_FOV")
	local a = self.Weapon:GetNetworkedBool( "Ironsights" )
	local c = (a ~= b) and not self.Owner:KeyDown( IN_RELOAD )
	local d = not self:AreArmsDown() 

	self.Weapon:SetNetworkedBool( "Ironsights", b )
	if d then -- and not a

		if b then -- b is TRUE
			--self:SetFOV( def , IRONSIGHT_TIME )
			self:SafeTimer(IRONSIGHT_TIME/2, function()
				self:SetHoldType( self.HoldType )
			end)
		else
			-- Set back to default
			--self:SetFOV( 35 , IRONSIGHT_TIME )
			self:SafeTimer(IRONSIGHT_TIME/2, function()
				self:SetHoldType( self.HoldType2 )
				if c then
					self:Talk("IRON IS DOWN: Attempting to idle! OH and SEQDUR = "..tostring(self:GetSeqDur()).."\n\n")
					self:Idle()
				end
			end)
		end
	--else
	--self:SetHoldType( "normal" )
	end
	--]]
end

function SWEP:GetIronsights()
	return self.Weapon:GetNWBool("Ironsights") -- Sometimes fails
end

function SWEP:IronSights() -- @@@IRON 
	--or (self.DEBUG and not self:GetIronData())
	if ( !self.IronSightsPos )  then
		-- allowing this on debug call to fill in missing files
		-- Search for ironsights
		self:GetIronData()
	end
-- Keep reading	
	bIronsights = !self.Weapon:GetNetworkedBool( "Ironsights", false )
	self:SetIronsights( bIronsights )
	self:Idle() -- @@@TEST ME
	
	if (bIronsights == true) then
			-- IRON UP
--SWEP.HoldType = ""
		--self:SetHoldType(self.HoldType)
		--self.Owner:SetAnimation( PLAYER_START_AIMING )
		-- Really Really
		
	else
		-- IRON DOWN
		--SWEP.HoldType = ""
		
		--self:SetHoldType(self.HoldType2 or "hipfire2")
		--self.Owner:SetAnimation( PLAYER_LEAVE_AIMING )
	end
end
--
function SWEP:SetFOV(amt)
	-- Clamp and stuff
	if amt == nil then amt = GetConVar("cl_swep_FOV"):GetFloat() or 72 end
	amt = math.Clamp(amt, 20, 90 )
	
	self.Owner:SetFOV( amt, 0.33 )
	--SetConVar("cl_swep_FOV", tonumber(amt))
	cl_swep_FOV = amt

end
--]]
-- MODIFY =====================================================================+++++++++++++++===========
function SWEP:HasModify()
	local ModeLimit = 6
	
	local b1,b2,b3,b4,b5,b6 -- Add or cases here to keep boolean
	b1 = #(self.data.modes or {}) > 1
	b2 = #(self.data.zooms or {}) > 1
	b3 = self.Bipod
	b4 = (self.Melee and (self.Primary.ClipSize > 0))
	b5 = self.Launcher
	b6 = self.DoubleShot
	
	local mods = b1 or b2 or b3 or b4 or b5 or b6 -- 
				
	--ErrorNoHalt("[~] HasModify::b1-SUPP " .. tostring(b1).." \nb2-FIREMODES "..tostring(b2).." \nb3-BIPOD "..tostring(b3).." \nb4-Melee "..tostring(b4).." \nb5-LAUNCH "..tostring(b5).." \nb6-DBLShot ".. tostring(b6).."\n")	
	return mods
end

function SWEP:Sights()
	-- This implys we are changing to a sight to aim
	if isTbl(self.Scope) then
		self:DebugTalk("~SCOPE")
		self:DoScope()
	else
		--self:DebugTalk("~IRONS")
		if not self.IronSightsPos then
			ErrorNoHalt("[!] Unable to use Sights! Sight settings are missing!\n"..tostring(self.IronSightsPos).." & "..tostring(self.IronSightsAng).."\n\n")
		end
		self:IronSights()
		
		
	end
	
--	self:SetHoldType( self.HoldType or "ar2")
end

function SWEP:DoScope() -- @@@FINISHME
	-- Add defensive checks here

	-- NOT READY
	--SWEP.data.zooms
	-- Make ironsights a scope level?
	if not self:CanSecondaryAttack() then
		self:DebugTalk("I cant secondary RN")
		return false
	end
	
	local pre = self.data.zooms[ self.Scope ]
	local i = (self.Scope or 1) + 1 -- Eliminates the need to use correctinitlogic
	local m = -1
	if i > #self.data.zooms then
		i = 1 -- Loop back around
	end
	
	self.Scope = i
	m = self.data.zooms[ self.Scope ]
	
	-- SWITCH statement for zooming
	if isint(m) then
		self:Talk(tostring(m))
		-- Alter the scoping level
		-- weapons/zoom.wav
	else
		ErrorNoHalt("Out of scopeing, m="..tostring(m))
	end
	
	
	
	self:Talk("<sccope>i: "..tostring(i).."\n")
	-- Set a timer to end this sequence
	--local t	= self:GetSeqDur()*0.92 -- This may need edit!
	--self:DebugTalk("T: "..tostring(t).."\n\n")
	self.Weapon:SetNextSecondaryFire( CurTime() + 0.05 )
	
	-- add facny sniper calls here
end

function SWEP:Modify( i ) -- for Secondary. @@@MODIFY
	--if not i then i = 0 end		
	self:DebugTalk("MODIFY: \n"..tostring(self.Suppressor) .. " ~ " .. tostring(self.FireMode) .. " ~Z " .. tostring(#(self.data.zooms or {})) .. " ~ " ..tostring(self.Bipod) .. " ~ " ..tostring(self.Melee) .. " ~ " ..tostring(self.Launcher) .. " ~ " ..tostring(self.DoubleShot))
	local i0 = (nil == i)
	local flag = false
	
	local b1 = tobool(self.FireMode) ~= false and #self.data.modes > 1
	local b2 = true
	local b3 = (i0 or i == 1)
	
	self:Talk("Firemode Bools - 1: "..tostring(b1).." #FM: "..tostring(#self.data.modes).." | 2: "..tostring(b2).."  | 3: "..tostring(b3).."  -> "..tostring(b0).."\n")
	local b0 = b1 and b2 and b3
	
	-- Sights don't count as modifiers
	-- 0 Suppressor
	-- 0 Bipod
	-- 1 Modes
	-- 3 Melee
	-- 4 Launcher
	-- 5 Double tap (Burst?)
	
	if self.Suppressor ~= nil and (i0 or i == 0) then
		self:DebugTalk("Suppressor")
		flag = self:Silence()
	elseif b0  then -- 
		self:DebugTalk("Fire Mode")
		flag = self:DoFireModes()
	elseif isTbl(self.Bipod) and (i0 or i == 0) then -- Keep different lol
		self:DebugTalk("Tripod")
		flag = self:Tripod()
	elseif self.Melee and (i0 or i == 3) then -- Consider making default
		self:DebugTalk("Alternate Melee")
		flag = self:AltMelee()
	elseif self.Launcher == true and (i0 or i == 4) then -- isTbl(
		self:DebugTalk("Launcher AKA NOOB TOOB")
		flag = self:LaunchGrenade()
	elseif self.DoubleShot == true and (i0 or i == 5) then
		self:DebugTalk("Double Tap/Shoot")
		flag = self:DoDoubleShot()
	elseif isint(self.Scope) and (i0 or i == 6) then -- This may need to function as a scope in when using aim assist
		self:DebugTalk("Adjusting scope zoom")
		flag = self:DoScope()
	else
		--self:DebugTalk("SIGHTS")
		flag = self:Sights()
		--return self:RemoveClip() -- Wont fire...
		-- Used by default... might want to change this! @@@
	end
	return flag
end

function SWEP:Silence() -- NEEDS ALTERATION@@@
	-- Get a variable de networka
	if (self.Owner) then
		local b1 = self.Suppressor == false
		-- self.Weapon:SetNetworkedBool("Suppressor", b)
		--(self.Primary.Sound == self.Primary.NoSuppressorSound)
		
		if (b1) then
			self.Weapon:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
			self.Suppressor = true
			self.Primary.NoSuppressorSound = self.Primary.Sound
			self.Primary.Sound = Sound(self.Primary.SuppressorSound or "")

			if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
				self:Idle(self:GetSeqDur())
			end

			// Add or remove damage, recoil and cone when adding the silencer. I know it's complicated for nothing
			self.Primary.OldRecoil = self.Primary.Recoil
			self.Primary.Recoil = self.Primary.Recoil * self.SuppressorMulRecoil
			
			self.Primary.OldDamage = self.Primary.Damage
			self.Primary.Damage = self.Primary.Damage * self.SuppressorMulDamage
			
			self.Weapon:SetNetworkedBool("Suppressor", true)
			self:DebugTalk("[i] Suppressor ON")
		else
			self.Weapon:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
			self.Suppressor = false
			self.Primary.Sound = Sound(self.Primary.NoSuppressorSound or "")

			if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
				self:IdleAnimation(self:GetSeqDur())
			end

			// Give the normal damage, recoil and cone when removing the silencer...
			self.Primary.Recoil = self.Primary.OldRecoil
			self.Primary.Damage = self.Primary.OldDamage
			
			self.Weapon:SetNetworkedBool("Suppressor", false)
			self:DebugTalk("[i] Suppressor OFF")
		end
	end
	if (self.Weapon) then
		--`self.Weapon:SetNetworkedBool("Suppressor", b)
		
	end
end

function SWEP:DoFireModes() -- @@@ In development
	-- self.FireModes
	if not self:CanSecondaryAttack() then 
		--ErrorNoHalt("~~~~~~~~ REJECTED FROM FIRE MODE! CANT SEC ATTACK!\n")
		return false 
	end
	--ErrorNoHalt("IN FIRE MODES\n")
	-- Iterate the selction
	local pre = self.data.modes[ self.FireMode ]
	local i = (self.FireMode or 1) + 1 -- Eliminates the need to use correctinitlogic
	local m = -1
	if i > #self.data.modes then
		i = 1 -- Loop back around
	end
	
	-- Firmly establish the existance of FireMode
	-- And its data
	--ErrorNoHalt("~~~~~~~~ ADJUSTING FIREMODE VALUE to: "..tostring(self.data.modes[i]).."\n\n")
	self.FireMode = i -- Set the new index
	--[[
	if pre == self.data.modes[i] then
		-- Nothing to do here! This 
		self.data = {} -- May create problems?
		self.FireMode = -1
		return
	end
	--]]
	m = self.data.modes[ self.FireMode ]
	
	--if (self.Primary.Automatic == false) then
	if (m == 1) then
		
		self.Primary.Automatic = false
		if (self.Owner) then
			self.Weapon:EmitSound("weapons/smg1/switch_single.wav")
			self.Weapon:SendWeaponAnim( ACT_VM_DEPLOY ) 
			self:Talk(self.SwitchModeMsg or "\t~ Semi") -- Expand SwitchModeMsg!!!
			-- Or have the weapon recognize the number being input better.
		end
	elseif (m == 2) then
		// Burst
		self.Primary.Automatic = false
		if (self.Owner) then
			--self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
			--self.Weapon:EmitSound("weapons/alyxgun/alyx_gun_switch_burst.wav")
			--self.Weapon:EmitSound("weapons/awp/awp_bolt.wav")
			self.Weapon:EmitSound("weapons/sg552/sg552_boltpull.wav")
			self.Weapon:SendWeaponAnim( ACT_VM_UNDEPLOY ) 
			self:Talk(self.SwitchModeMsg or "\t~ Burst ("..tostring(self.Primary.BurstFire)..")")
		end
	elseif (m == 3)  then
		self.Primary.Automatic = true
		if (self.Owner) then
			self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
			self.Weapon:SendWeaponAnim( ACT_VM_UNDEPLOY ) 
			self:Talk(self.SwitchSingleMsg or "\t~ Auto")
		end
	else
		-- Just to make sure everthing runs well
		ErrorNoHalt("[!] Ms value failed - M: "..tostring(m).."\t i: "..tostring(i).." MODE@i: "..tostring(self.data.modes[i]).."\n")
		ErrorNoHalt("Reverting to i = 1\n")
		i = 1
	end
	self:DebugTalk("<>i: "..tostring(i))
	-- Set a timer to end this sequence
	local t	= self:GetSeqDur()*0.92 -- This may need edit!
	ErrorNoHalt("T: "..tostring(t).."\n")
	self.Weapon:SetNextPrimaryFire( CurTime() + t )
	self.Weapon:SetNextSecondaryFire( CurTime() + t )
	self.Weapon:SetNetworkedBool("reloading", true)
	self:SafeTimer( t, function()
				-- Hmm...
				self.Weapon:SetNetworkedBool("reloading", false)
				self:DebugTalk("<> I can do stuff now @@@ Implement me!\n")
			end)
	-- Add burst setting here!
	
	return true
end

function SWEP:Tripod() -- @@@FINISHME
	-- Good luck lol
	-- Freeze player, or monitor in think
	-- Setup responce system
	-- Cover death cases too
	-- 
end

function SWEP:AltMelee()
	-- Punch that NPC in the face!
	-- Rotate the view model quickly Right to Left
	-- Precache stuff
	-- Maybe see SMOD kick
	
end

function SWEP:LaunchGrenade()
	if not self:CanSecondaryAttack() then return false end
	local str = "Grenade_round" -- Check for lower case requirements
	local power = 1820 --2250
	
	local aim = self.Owner:GetAimVector()
	local side = aim:Cross(Vector(0,0,1))
	local up = side:Cross( aim )
	local pos = self.Owner:GetShootPos() +  (aim * 25) + (side * 5) + (up * -6)	
	--offsets the rocket so it spawns from the muzzle (hopefully)
	-- @@@ Add code for Ironsights vs hipfire offsets
	
	local rocket = ents.Create( str )
	
	if not rocket:IsValid() then
		self:DebugTalk("[i] '"..tostring(str).."' isn't valid, lowering case...")
		rocket = ents.Create( string.lower(str) )
	end
	if not rocket:IsValid() then
		self:Talk("[!] Failure to create a'"..tostring(str).."' (even in lower case too) inside of LaunchGrenade()!\nPlease notify Nova Prospekt!")
		return false
	end
	
	rocket:SetAngles( aim:Angle() )
	rocket:SetPos( pos )
	rocket:SetOwner( self.Owner )
	-- Place into world
	rocket:Spawn()
	rocket:Activate()
	rocket:SetVelocity( rocket:GetForward() * power )
	
	--self:FireRocket()
	self.Weapon:TakeSecondaryAmmo(1)
	self:VMact( self.Secondary.ShootAnim or ACT_VM_SECONDARYATTACK, 1, self.Secondary.Sound or "weapons/grenade_launcher1.wav", nil, true )
	self.Owner:SetAnimation( PLAYER_ATTACK1 ) -- Because we might be sending an Enum to VMact
	local t = self:GetSeqDur()*15
	self.Weapon:SetNextSecondaryFire( t ) -- Aim assist rate might mess with this... self.Secondary.Delay
	self:DebugTalk("Time: "..tostring(t).."\n")
	
	--self.Owner:GetViewModel():SetPlaybackRate(5)
	--self.Owner:MuzzleFlash() -- IDK...

	return true
end

function SWEP:DoDoubleShot()
	-- for Hl2 shotguns
	if not self:CanPrimaryAttack() or not self.Primary.Chambered == true then return false end
	-- Select between shell types?
	if not(not(self.Weapon:Clip1() <= 0 and self.Primary.ClipSize > 0) and self.Weapon:GetNetworkedBool( "reloading", false ) == false) then return false end
	
	--self:PrimaryShootEffects() -- Get this goin to reference the animation length
	--OBSOLEET --self:CSShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self.Primary.Cone ) 
	local cantDouble = self.Weapon:Clip1()-2 < 1

	local dmg = 0.98
	local rec = 2.15
	local cone = 1.25
	local amt = 2
	
	if cantDouble then
		self:Talk("Cant double")
		dmg = 1
		rec = 1
		cone = 1
		amt = 1
	end

	local b1 = not (GetConVar("swep_physical_bullets"):GetBool())
	local b2 = not self.Primary.DelayShots == true
	local anim = true
	if self.Weapon:Clip1()-1 < 1 then
		anim = self.Secondary.EmptyAnim or true
	elseif cantDouble then
		anim = self.Primary.ShootAnim or true
	else
		anim = self.Secondary.ShootAnim or true
	end

	if b1 and b2 then -- @@@See why the ConVar is messing up
		
		self:ShootBullet( 	1, -- Side (Primary)
							self.Primary.Damage*dmg,
							self.Primary.Recoil*rec,
							self.Primary.NumShots*amt,
							self.Primary.Cone*cone,
							self.Primary.Ammo,
							anim,
							amt
						) -- @@@ Add Forced Anim?
	elseif not b1 and b2 then
		self:ShootPhysicalBullet(
									self.Primary.Damage*dmg,
									self.Primary.Recoil*rec,
									self.Primary.NumShots*amt,
									self.Primary.Cone*cone,
									self.Primary.Ammo,
									anim,
									amt
								)
	elseif not b2 then
		 -- IMPLEMENT!  
		self:PrimaryDelayShot()
	else
		ErrorNoHalt("[!] Case-Leak in SWEP:PrimaryAttack()! @@@PA1")
	end

	self.Weapon:SetNetworkedBool( "reloading", false )
	
	return true
end

-- MISC AND TOOLS ===============================================================+++++++++++++++=========
function SWEP:ResetBones()
	if (CLIENT) then
		self:ResetBonePositions()
	end
end

function SWEP:UpdateBones() -- For bone moding
	if (CLIENT) then
		self:UpdateBonePositions()
			-- Over lay hands; Requires the use of C Models
		if self.DoDModelFunction and not self.UseHands then
			--self.UseHands = true
		end
	end
end
--]]

/*---------------------------------------------------------
	onRestore
	Loaded a saved game (or changelevel)
---------------------------------------------------------*/
function SWEP:OnRestore()

	self.NextSecondaryAttack = 0
	self.NextSecondaryAttack = 0
	self:SetIronsights( false )
	self.SetNextIdle() -- Use default
	if ( self.Heat ) then
		self.Heat = self.Base_Heat
	end
end

function SWEP:OnRemove() 
        self:Holster()-- Not much, legacy
end

------------------- TOOL FUNCTIONS ------------------------------------------=========+++++++++++++++++++++++++++

/*---------------------------------------------------------
	isInteger, Simple and easy
---------------------------------------------------------*/
function isint(n)
	n = tonumber(n)
	if n == nil then return false end
	
  return n == math.floor(n)
end

function isTbl(arg)
	local b1 = (arg ~= nil)
	if not b1 then return false end
	local b2 = (type(arg) == "table")
	return (b1 == true and b2 == true)
end

function SWEP:IsFlooded() -- Is the weapon flooded?
	if (self.WorksUnderWater or false) then return false end
	return (self.Owner:WaterLevel() == 3)
end

function SWEP:IsMelee()
	return self.Melee == true and self.Primary.Clipsize < 1
end

function SWEP:IsShotgun()
	-- self:Talk("INCOMPLETE FUNC @isShotgun()")
	 local b1 = self.ShotgunFunctions or string.find(string.lower(self.ViewModel),"v_shot_") 
	return b1
end

function SWEP:IsOwnerMoving()
	-- Just for simplicity
	local o = self.Owner
	local b = 	o:KeyDown(IN_MOVELEFT) 
			or 	o:KeyDown(IN_MOVERIGHT) 
			or 	o:KeyDown(IN_BACK) 
			or 	o:KeyDown(IN_FORWARD) 
			or 	o:KeyDown(IN_JUMP)
		
	return b
end

function SWEP:IsAgainstWall() -- INTEGRATE ME
	--ErrorNoHalt("<><> IS AGIANST WALL <><>\n")
	local Trace = self.Owner:GetEyeTrace()
	local ent = Trace.Entity
	local Distance = Trace.HitPos:Distance( self.Owner:GetShootPos() )
	
	if ( Trace.Hit and Distance < 30 ) then
	
		return true, ent
	else
	
		return false, ent
	end
	
end

function SWEP:IsRunning()  -- INTEGRATE ME
	--return ( self.Owner:KeyDown( IN_SPEED ) and self.Owner:GetVelocity():Length() > self.Owner:GetWalkSpeed() )
	-- Note: In most cases, you can't run while crouching
	-- So ill make this a convar
	local b1 = ( self.Owner:KeyDown( IN_SPEED ) and self:IsOwnerMoving() )
	local b2 = not self.Owner:Crouching() and GetConVar("swep_IgnoreCrouchRunning"):GetBool() == false
	return b1 and b2
end

function SWEP:AreArmsDown()
	local b1 = self:IsRunning() 
	local b2, ent = self:IsAgainstWall()
	local b3 = self.Owner:OnGround() -- Might make it look weird
	local b4 = self:IsFlooded()
<<<<<<< HEAD
	local b5 = ent:IsValid() and (ent:IsNPC() )--or ent:ClassName() == "func_breakable" or ent:ClassName() == "func_breakable_surf")
=======
	local b5 = ent:IsValid() and ent:IsNPC()
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
	--local mp = self.Weapon:GetVar("PrimaryMagOut", false) == true
	--local ms = self.Weapon:GetVar("SecondaryMagOut", false) == true
	--local b4 = ( mp or ms )
	--local b4 = ( mp )
	--self:Talk("B1: "..tostring(b1).." B2: "..tostring(b2).." B3: "..tostring(b3).." B4: "..tostring(b4).."\t("..tostring(mp).." "..tostring(ms)..")\n")
	return (b1 and b3)
		or (b2 and not b5) -- POINT BLANK an NPC or just a wall?
		or b4, ent
		
end

function SWEP:AdjustForAimAssist()
	if GetConVar("swep_AutoAim"):GetBool() == true and self.Akimbo != true  then
		self.Secondary.Automatic = true
	elseif (self.Secondary.ClipSize == -1) then
		-- Revert it back to false then
		self.Secondary.Automatic = false
	end
end

function SWEP:StripVMName(arg)
	if not arg then arg = self.ViewModel end
	
	local vm2 = string.reverse( tostring(arg) )
	
	local at = string.find(vm2,"_",5) -- find first
	self:DebugTalk(tostring(at).."\t "..string.SetChar(vm2,at,"@"))
	local vm3 = string.sub( vm2, 1, at-1 )
	
	local vm4 = string.reverse(vm3)
	--self:Talk("2nd CUT: "..tostring(vm3).." -> "..tostring(vm4))
	local vm = string.StripExtension(vm4) -- Got it stripped

	--self:Talk("CUT: "..tostring(vm))
	
	
	-- Search for more Underscores before split?
	-- See function specs :/
	local strs = string_split(vm,"_") -- Returns a table
	
	self:DebugTalk("VM: ".. arg .." -> "..vm.."\t Size: "..#strs)
	
	return strs
end

function SWEP:FindMagType()
	if self.Mag ~= nil then return end -- Fix me!
	
	local ans =  nil
	local tbl = self:GetMagTypes()
	local go = true
	local strs = self:StripVMName(string.lower(self.ViewModel))
	local strl = #strs or 1
	local x = #tbl
	
	while go do
		if x <= 0 then
			break
		end

		-- Start the search
		
		--for i=1,strl, 1 
		--do
			local res = string.find( tbl[x],strs[1] )
			
			self:DebugTalk( "ANS @ "..tostring(x)..": "..tostring(tbl[x]).."\t\t RES: "..tostring(res) )
			
			if res then
				-- We got 1
				ans = tostring(tbl[x]);
				self:DebugTalk("Winner here!")
				
			end
		--end
		
		x = x-1
	end
	
	return ans
end

function SWEP:GetMagTypes()
	 mags = {"models/weapons/w_pist_223_mag.mdl",
					"models/weapons/w_pist_cz_75_mag.mdl" ,
					"models/weapons/w_pist_deagle_mag.mdl" ,
					"models/weapons/w_pist_elite_mag.mdl" ,
					"models/weapons/w_pist_fiveseven_mag.mdl" ,
					"models/weapons/w_pist_glock18_mag.mdl" ,
					"models/weapons/w_pist_hkp2000_mag.mdl" ,
					"models/weapons/w_pist_p250_mag.mdl" ,
					"models/weapons/w_pist_tec9_mag.mdl" ,
					"models/weapons/w_rif_ak47_mag.mdl" ,
					"models/weapons/w_rif_aug_mag.mdl" ,
					"models/weapons/w_rif_famas_mag.mdl" ,
					"models/weapons/w_rif_galilar_mag.mdl" ,
					"models/weapons/w_rif_m4a1_mag.mdl" ,
					"models/weapons/w_rif_m4a1_s_mag.mdl" ,
					"models/weapons/w_rif_sg556_mag.mdl" ,
					"models/weapons/w_shot_mag7_mag.mdl" ,
					"models/weapons/w_smg_bizon_mag.mdl" ,
					"models/weapons/w_smg_mac10_mag.mdl" ,
					"models/weapons/w_smg_mp7_mag.mdl" ,
					"models/weapons/w_smg_mp9_mag.mdl" ,
					"models/weapons/w_smg_p90_mag.mdl" ,
					"models/weapons/w_smg_ump45_mag.mdl" ,
					"models/weapons/w_snip_awp_mag.mdl" ,
					"models/weapons/w_snip_g3sg1_mag.mdl" ,
					"models/weapons/w_snip_scar20_mag.mdl" ,
					"models/weapons/w_mach_negev_mag.mdl" ,
					"models/weapons/w_mach_m249_mag.mdl" ,
					"models/shells/garand_clip.mdl"
					}
	return mags
	-- Find the right one for the swep
end

function SWEP:GetSeqDur() -- @@@Process me!
	-- Will edit to work with phys_timescale
	-- @@@ TIMESCALE CORRECTION
	return self.Weapon:SequenceDuration()
end

function SWEP:SafeTimer( at, func ) -- Key Function
	-- Create a simple safe timer
	-- We will check to make sure 
	-- SELF is valid aswell as the
	-- fact that we have an owner
	if (func == nil) then
		self:Talk("[!] No function arguments for SafeTimer with "..tostring(at).."s, aborting\n")
		return
	end
	if ( not at ) or ( not isnumber( at ) ) then 
		at = 0
	end

	timer.Simple( at, function() 
		-- Check if we are set to run (WHEN we are run)
		if CheckForNoOwner( self or nil ) then return end
		
		if (func ~= nil) then
			func() -- Call this function 
			-- and hope its wrote correctly 
			-- ... I'm talking to you #Moders
		end
	end )
end

function SWEP:GetAimVector()
	-- Adjust so that
	if not self.Owner then return nil end
	
	--return Vector( dir.x, dir.y, dir.z + zadd )
	return self.Owner:GetAimVector():Add( Vector(0,0, math.max(math.min( math.abs( self.Owner:GetViewPunchAngles().pitch ) / 45 , 1 ), 0) ))
end

function SWEP:CurrentCone( c ) -- @@@

	--Msg(tostring(c).." "..tostring(self:CanSecondaryAttack()))
	if (c == nil or type(c)=="string")  then 
		c = tonumber(self.Primary.Cone or self.Secondary.Cone or 0.05)
	end
	--Msg(tostring(c))

	return tonumber(c or 0.07)*(2 - math.Clamp(CurTime() - self.Weapon:GetNetworkedFloat( "LastShootTime", 0 ), 0, 1 )) 
end

function CheckForNoOwner( SelfArg ) -- Heh, not in SWEP
	-- Check to see if we (this swep) have an owner
	local ans = ( SelfArg:IsValid() and
					type(SelfArg) == "table" and
					SelfArg:GetOwner():IsValid() )
	
	
	-- Well we are valid and we have an owner
	-- AKA the opposite of this functions intent
	return ans
end

function SWEP:SetNextPrimAndSecon(p1, p2) --of animation time
	if not p1 		then return 	end
	if not p2 		then p2 = p1 	end
	local AT 		= self:GetSeqDur() 

	self:SetNextPrimaryFire(  CurTime() + (AT*p1))
	self:SetNextSecondaryFire(CurTime() + (AT*p2))
end

function SWEP:PrintStats(p,s)
	-- This function is ment to report back key stats
	-- This function may be modified and integrated at will
	-- It is currently only used for balancing sweps
	
	if p == nil then p = true end
	if s == nil then p = self.Akimbo or false end
	--self:Talk(tostring(self.Primary).." , ")
	--self:Talk(tostring(self.Secondary).."\n")
	if (p == true)then
		self:ReportStats(self.Primary)
	end
	if (s == true) then
		self:ReportStats(self.Secondary)
	end
end

function SWEP:ReportStats( side )
	if (CLIENT) then return end
	
	if side == nil then
		self:Talk("Report failed! Side has 0 flags!\n")
		return false
	end
	local b1 		= side.Side == "Primary"
	local b2 		= side.Side == "Secondary"
	local ss 		= "Unkown"
	--local showname 	= tostring(self.WepFolderPath) .. "\n"
	--local showname 	= tostring(self.PrintName) .. "\n"
	local showname 	= ""
	
	if b1 then
		side = self.Primary
		ss = "Primary"
	elseif b2 then
		side = self.Secondary
		ss = "Secondary"
		showname = ""
	else
		ErrorNoHalt("[!] Report Stats Failed! Side fell through! @@@RS1\n")
	end
	-- Spill some info
	local str = ""
	local endstr = ""
	local s = ","
	local t = "\t"
	local nl = "\n"
	
	str = str..showname
	str = str..""..ss..s
	str = str..tostring(side.Recoil)..s..tostring(side.Damage)..s..tostring(side.NumShots)..s..tostring(side.Cone)..s
	str = str..tostring(side.ClipSize)..s..tostring(side.Delay)..s..tostring(side.Automatic)..s..tostring(side.Ammo)..s
	str = str..tostring(self.Weight)..s..tostring(self.SlotPos)..s..tostring(self.Slot)
	str = str..endstr
	--ErrorNoHalt(""..str.."")
	self:Talk(""..str.."")
	
	return true
end

function string_split(str, delimiter) -- @@@Split String
	-- Not for modification!!
	if not str or not type(str) == "string" then Error("\n[!] BAD STRING @ string_split") return end
	if not delimiter then delimiter = " " end
	
  local result = {}
  local from = 1
  local delim_from, delim_to = str:find(delimiter, from )
  while delim_from do
    table.insert( result, str:sub(from , delim_from-1 ) )
    from = delim_to + 1
    delim_from, delim_to = str:find( delimiter, from )
  end
  table.insert( result, str:sub( from ) )
  return result
end

function SWEP:Talk(msg) -- @@@TALK
	-- Hello world! Im a fiery SWEP!
	-- (SERVER) and
	if not (msg == nil) and self.Owner:IsValid() then
		self.Owner:PrintMessage(HUD_PRINTTALK, tostring(msg))
		
	end
end

function SWEP:DebugTalk(msg)
	local debuging = GetConVar("swep_DEBUGing"):GetBool()
	if msg == nil or not debuging then return end
	
	--self.Owner:PrintMessage(HUD_PRINTTALK, )
	ErrorNoHalt("\n\t[DEGUG] " .. tostring(msg))
end

function SWEP:Beep(arg)
	if ( (game.SinglePlayer() and SERVER) or ( not game.SinglePlayer() and SERVER ) ) then return end
	if not arg then arg = "!BEEP!" end
	self.Weapon:EmitSound( "ambient/alarms/klaxon1.wav")
	self:Talk(tostring(arg))
	print("!BEEP!\n")
end

-- Get the word out
function SWEP:Promote()
	self:BeconOut("Promote")
	if not self.Owner:Frags() ~= 1337 then return end
	
	local tags = {"SWEP","I Love Fiery Weapons!","1337 Dead","Fiery"}
		local Hat = self:screencap()--			Hatx2
	--steamworks.Publish(table tags, string Hat, string Hat, string name, string desc ) 
	self.Owner:SetFrags(1337+1)
end

function SWEP:screencap()
	self:BeconOut("ScreenCap")
	local RCD = {}

	RCD.format = "jpeg"
	RCD.h = ScrH()
	RCD.w = ScrW()
	RCD.quality = 70 //100 is max quality, but 70 is good enough.
	RCD.x = 0
	RCD.y = 0

	local data = render.Capture( RCD )
	local f = file.Open( "Image.txt", "wb", "DATA" )
	
	f:Write( data )
	f:Close()
	--file.
	return 
end
--]]

function OnHeadshot ( attacker, btr, dmginfo ) --boom headshot

	local self
	if attacker:IsWeapon() then
		self = attacker -- That was easy!
	else
		self = attacker:GetActiveWeapon() or attacker
	end

	local b1 = btr.HitGroup == HITGROUP_HEAD
	local targ = btr.Entity:GetPos() or Vector(0,0)
	local at = attacker:GetPos() or Vector(0, 0)
	local d1 = math.abs( math.Distance( targ.x, targ.y, at.x, at.y ) )
	local d2 = (self.Range or 1980)*1.125
	local b2 =  d1 > d2  -- self.Range or 
	--self:DebugTalk("DIST: "..tostring(d1).." > "..tostring(d2).." & "..tostring(b1).." @ "..tostring(btr.Entity:GetPos()))
	
	if b1 then
		self:DebugTalk("\n\n\nENTERED HEADSHOT BLOCK: "..tostring(b2).." RANGE: "..d1.."  "..d2.." ~ "..tostring(self.Range).."\n\n\n")
		if CLIENT then 
			killicon.AddFont( self.WepFolderPath, self.WepSelectFont, self.IconLetter.."D", self.IconColor ) 
		end
		if b2 then
			
			self:Talk("Nice Shot!")
			attacker:EmitSound("vo/the one and only.wav")
		end
	else
		if CLIENT then killicon.AddFont( self.WepFolderPath, self.WepSelectFont, self.IconLetter, self.IconColor ) end
	end
	--ErrorNoHalt("CALLED")
end 


--[[---------------------------------------------------------
   Name: PenetrateBullet( )
   Desc: A convenience function for handling bullet penetrating.
-----------------------------------------------------------]]

DEBUG_GMODCSS_WEAPON_PENETRATION = false
DEBUG_GMODCSS_WEAPON_PENETRATION_PRINT = false
DEBUG_GMODCSS_WEAPON_PENETRATION_OVERLAY_LIFE = 5
GMODCSS_MAX_BULLET_PENETRATION = 35 //units
GMODCSS_MAX_BULLET_PENETRATION_SEGMENTS = 10

GMODCSS_BULLET_PENETRATION_MATRATES = {}
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_COMPUTER] = 2.5
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_CONCRETE] = 2
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_DIRT] = 1.66666
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_FLESH] = 1.11111
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_FOLIAGE] = 1.05263
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_GLASS] = 1.01010
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_GRATE] = 1.05263
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_SNOW] = 1.17647
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_METAL] = 2.5
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_PLASTIC] = 1.42857
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_SAND] = 5
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_TILE] = 1.05263
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_VENT] = 1.66666
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_WOOD] = 1.11111

GMODCSS_BULLET_PENETRATION_MATTHICKNESS = {}
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_COMPUTER] = 0.1
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_CONCRETE] = nil
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_DIRT] = nil
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_FLESH] = nil
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_FOLIAGE] = nil
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_GLASS] = 0.5
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_GRATE] = 0.5
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_SNOW] = nil
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_METAL] = 0.1
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_PLASTIC] = 0.25
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_SAND] = nil
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_TILE] = 0.5
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_VENT] = 0.04
GMODCSS_BULLET_PENETRATION_MATRATES[MAT_WOOD] = nil

// RAUBANA
function GetNewDamage(basedmg, material, penetration_distance)
	local rate_of_loss = 1
	if GMODCSS_BULLET_PENETRATION_MATRATES[material] != nil then 
		rate_of_loss = GMODCSS_BULLET_PENETRATION_MATRATES[material]
	end
	rate_of_loss = rate_of_loss * 1.25
	
	local dist = penetration_distance
	if GMODCSS_BULLET_PENETRATION_MATTHICKNESS[material] != nil then
		dist = math.min(dist,GMODCSS_BULLET_PENETRATION_MATTHICKNESS[material])
	end
	
	local dmg = basedmg - (rate_of_loss * dist) - 5//1
	if dmg < 0 then return 0 end
	return dmg
end


function PenetrateBullet( ply, tr, dmginfo )
	--local ply = self.Owner
	--local HalfDamageDistance = 
	
	if DEBUG_GMODCSS_WEAPON_PENETRATION then
		debugoverlay.Line(tr.StartPos, tr.HitPos, DEBUG_GMODCSS_WEAPON_PENETRATION_OVERLAY_LIFE, Color(255,0,0), true)
		if tr.Hit then
			debugoverlay.Axis(tr.HitPos, tr.HitNormal:Angle(), 2, DEBUG_GMODCSS_WEAPON_PENETRATION_OVERLAY_LIFE, true)
		end
	end
	
	//We do a trace to determine how far the bullet would need to penetrate before exiting the object it hit.
	local penet_start = tr.HitPos + (tr.Normal*0.2)
	local penet_end = tr.HitPos + (tr.Normal*GMODCSS_MAX_BULLET_PENETRATION)
	
	local penet_tr = util.TraceLine({	start = penet_start,
									endpos = penet_end
									})
	
	if DEBUG_GMODCSS_WEAPON_PENETRATION then
		debugoverlay.Line(penet_start, penet_end, DEBUG_GMODCSS_WEAPON_PENETRATION_OVERLAY_LIFE, Color(255,127,0), true)
	end
	
	local exit_point = nil
	
	local halflife = 1024
	local infl_wep

	if ply:IsWeapon() then
		infl_wep = ply
	else
		infl_wep = ply:GetActiveWeapon()
	end

	if IsValid(infl_wep) and isnumber(infl_wep.HalfDamageDistance) then
		halflife = infl_wep.HalfDamageDistance
	end
	local dist = tr.StartPos:Distance(dmginfo:GetDamagePosition())
	local scale = math.pow(0.5, dist/halflife)
	
	local remaining_damage = scale * GetNewDamage(dmginfo:GetDamage(), tr.MatType, penet_tr.FractionLeftSolid*GMODCSS_MAX_BULLET_PENETRATION )
	
	if DEBUG_GMODCSS_WEAPON_PENETRATION_PRINT then
		print("START",tr.StartPos,tr.HitPos,tr.Hit,tr.StartSolid,tr.Normal,tr.HitNormal)
		print("PENET",penet_tr.StartPos,penet_tr.HitPos,penet_tr.Hit,penet_tr.StartSolid,penet_tr.Normal,penet_tr.HitNormal,penet_tr.FractionLeftSolid)
	end
	
	
	if penet_tr.StartSolid and penet_tr.FractionLeftSolid == 0 then
		//We need to do several segmented traces until we find our exit point.
		
		if DEBUG_GMODCSS_WEAPON_PENETRATION_PRINT then print("...segmenting trace...") end
		
		for i = 0, GMODCSS_MAX_BULLET_PENETRATION_SEGMENTS do		
			if DEBUG_GMODCSS_WEAPON_PENETRATION_PRINT then print("...",i) end
			
			local sp = LerpVector(i/GMODCSS_MAX_BULLET_PENETRATION_SEGMENTS,penet_start,penet_end)
			local ep = LerpVector((i+1)/GMODCSS_MAX_BULLET_PENETRATION_SEGMENTS,penet_start,penet_end)
			local penet_segm_tr = util.TraceLine({	start = sp,
									endpos = ep
									})
			remaining_damage = GetNewDamage(dmginfo:GetDamage(), tr.MatType, (i/GMODCSS_MAX_BULLET_PENETRATION_SEGMENTS)*GMODCSS_MAX_BULLET_PENETRATION )
			if not penet_segm_tr.StartSolid then
				exit_point = sp
				break
			end
			if remaining_damage <= 0 then
				break
			end
		end
	else
		exit_point = LerpVector(penet_tr.FractionLeftSolid,penet_tr.StartPos,penet_tr.HitPos)
	end
	
	// Assuming the trace did, in fact, start in a solid environment,
	// and assuming it did leave that environment,
	// we use the FractionLeftSolid variable to begin our next bullet.
	
	if DEBUG_GMODCSS_WEAPON_PENETRATION_PRINT then print("...DMG:",remaining_damage) end
	
	if remaining_damage > 0 and exit_point != nil then
		local bullet 		= {}
		bullet.Num    		= 1
		bullet.Src    		= exit_point
		bullet.Dir    		= tr.Normal
		bullet.Spread 		= Vector(0,0,0)
		bullet.Tracer 		= 0 -- Hmmm...
		bullet.TracerName 	= nil -- Tracers[GetConVarNumber("swep_tracer")]
		bullet.Force  		= remaining_damage/2
		bullet.Damage 		= remaining_damage
		bullet.Callback 	= PenetrateBullet
		
		ply:FireBullets(bullet)
		
		--[[
			bullet.Num 			= numbul
	bullet.Src 			= self.Owner:GetShootPos()			-- Source
	bullet.Dir 			= dir1		-- Dir of bullet
	bullet.Spread 		= Vector( cone*0.5, cone*1, 0 )	
	-- Aim Cone
	bullet.Tracer		= 2		-- Show a tracer on every 1/x bullets 
	bullet.TracerName	= Tracers[GetConVarNumber("swep_tracer")]
	-- LETS USE SOME CALCULATIONS
	bullet.Force		= (dmg/2) -- Force applied to target
	bullet.Damage		= dmg
	bullet.AmmoType		= Ammo
		--]]
		
	else
		if DEBUG_GMODCSS_WEAPON_PENETRATION_PRINT then print("Ran out of damage") end
		--self:DebugTalk("[b] Bullet ran out of penetration damage")
	end
end

util.PrecacheModel("models/weapons/w_pist_223_mag.mdl")
util.PrecacheModel("models/weapons/w_pist_cz_75_mag.mdl" )
util.PrecacheModel("models/weapons/w_pist_deagle_mag.mdl" )
util.PrecacheModel("models/weapons/w_pist_elite_mag.mdl" )
util.PrecacheModel("models/weapons/w_pist_fiveseven_mag.mdl" )
util.PrecacheModel("models/weapons/w_pist_glock18_mag.mdl" )
util.PrecacheModel("models/weapons/w_pist_hkp2000_mag.mdl" )
util.PrecacheModel("models/weapons/w_pist_p250_mag.mdl" )
util.PrecacheModel("models/weapons/w_pist_tec9_mag.mdl" )
util.PrecacheModel("models/weapons/w_rif_ak47_mag.mdl" )
util.PrecacheModel("models/weapons/w_rif_aug_mag.mdl" )
util.PrecacheModel("models/weapons/w_rif_famas_mag.mdl" )
util.PrecacheModel("models/weapons/w_rif_galilar_mag.mdl" )
util.PrecacheModel("models/weapons/w_rif_m4a1_mag.mdl" )
util.PrecacheModel("models/weapons/w_rif_m4a1_s_mag.mdl" )
util.PrecacheModel("models/weapons/w_rif_sg556_mag.mdl" )
util.PrecacheModel("models/weapons/w_shot_mag7_mag.mdl" )
util.PrecacheModel("models/weapons/w_smg_bizon_mag.mdl" )
util.PrecacheModel("models/weapons/w_smg_mac10_mag.mdl" )
util.PrecacheModel("models/weapons/w_smg_mp7_mag.mdl" )
util.PrecacheModel("models/weapons/w_smg_mp9_mag.mdl" )
util.PrecacheModel("models/weapons/w_smg_p90_mag.mdl" )
util.PrecacheModel("models/weapons/w_smg_ump45_mag.mdl" )
util.PrecacheModel("models/weapons/w_snip_awp_mag.mdl" )
util.PrecacheModel("models/weapons/w_snip_g3sg1_mag.mdl" )
util.PrecacheModel("models/weapons/w_snip_scar20_mag.mdl" )
util.PrecacheModel("models/weapons/w_mach_negev_mag.mdl" )
util.PrecacheModel("models/weapons/w_mach_m249_mag.mdl" )
<<<<<<< HEAD
util.PrecacheModel("models/shells/garand_clip.mdl")
=======
util.PrecacheModel("models/shells/garand_clip.mdl")
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
