
if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
end

if ( CLIENT ) then

	SWEP.PrintName			= "TESTER 4\nString Compare"			
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
	-- TESTS!
	local finish
	local start = RealTime()
	-- Loop
	local s1 = "cat"
	local s2 = "tac"
	local flag = self:CompareSTR(s1,s2)
	self:Talk("CompareSTR =  "..tostring(flag))
	
	finish = RealTime()
	self:Talk("Elapsed time: "..tostring(finish-start))
end

function SWEP:CompareSTR(s1,s2)
	self:Talk("Comparing strings: "..tostring(s1).." & "..tostring(s2).."\n")
	if #s1 == #s2 then
		-- Check em out 
		local r1 = table.ToString(self:CountSort(s1))
		local r2 = table.ToString(self:CountSort(s2))
		self:Talk("R1: "..tostring(r1))
		self:Talk("R2: "..tostring(r2))
		
		if r1 ~= r2 then
			return false
		end
	else
		return false
	end
	
	return true
end

function SWEP:CountSort(str)
	local ans = {}
	
	for i = 1, #str, 1 do -- Start at one, because of addressing?
		local cur = str[i]
		self:Talk("#"..tostring(i).." -> " ..cur)
		ans[cur] = (ans[cur] or 0) + 1
	end
	self:Talk("\n")
	return ans
end

function SWEP:Talk(msg) -- @@@TALK
	-- Hello world! Im a fiery SWEP!
	-- (SERVER) and
	if not (msg == nil) and self.Owner:IsValid() then
		self.Owner:PrintMessage(HUD_PRINTTALK, tostring(msg))
		
	end
end