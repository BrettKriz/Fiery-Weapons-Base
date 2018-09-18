/* Fiery Weapons Base
	Made by: Nova Prospekt
	
	File: cl_init
	Side: CL
	
	A Modifided weapon_cs_base
 */

--include( "animations.lua" )
include( "shared.lua" )
--include( "animations.lua" )

ErrorNoHalt("<> cl_init ")

SWEP.crosshair_color = {}

CreateClientConVar("cl_crosshair_scale", -1,true, true)
CreateClientConVar("cl_crosshair_color", tostring(SWEP.IconColor), true, true) -- "255 120 45 120"

cl_crosshair_r 		= CreateClientConVar("cl_crosshair_r", 255, true, false)		-- Red
cl_crosshair_g 		= CreateClientConVar("cl_crosshair_g", 120, true, false)		-- Green
cl_crosshair_b 		= CreateClientConVar("cl_crosshair_b", 45, true, false)			-- Blue
cl_crosshair_a 		= CreateClientConVar("cl_crosshair_a", 200, true, false)		-- Alpha
cl_crosshair_l 		= CreateClientConVar("cl_crosshair_l", 30, true, false)			-- Length
cl_crosshair_t 		= CreateClientConVar("cl_crosshair_t", 1, true, false)	 		-- Toggle Crosshair		-- Enable/Disable
cl_crosshair_type  	= CreateClientConVar("cl_crosshair_type", 1, true, false)		-- Type

/*---------------------------------------------------------
	Print Info
---------------------------------------------------------*/
function SWEP:PrintWeaponInfo( x, y, alpha )
	-- Add a reading setting 
	if ( self.DrawWeaponInfoBox == false ) then return end
	
	if (self.InfoMarkup == nil ) then
		local str
		local title_color = "<color=255,120,45,255>"
		local text_color = "<color=150,151,150,255>"
		local ammos = ""
		if self.Primary.Ammo ~= nil and self.Primary.Ammo ~= "none" then
			ammos = ammos .. " Prime -> " .. self.Primary.Ammo
		elseif self.Secondary.Ammo ~= nil and self.Secondary.Ammo ~= "none" then
			ammos = ammos .. "\n Second -> " .. self.Secondary.Ammo
		end
		
		str = "<font=HudSelectionText>"
		str = str .. tostring(self.WepFolderPath) .. " (" .. tostring(self.ClassName) .. ")\n"
		local addAuthor = ""
		if (self.Author != "Nova Prospekt") then addAuthor = "\nNova Prospekt" end -- self.isTemplate and 
		if ( self.Author != "" ) 			then str = str .. title_color .. "Author:</color>\t"		..text_color..self.Author..addAuthor.."</color>\n" 		end
		if ( self.Contact != nil
			and self.Contact != "") 		then str = str .. title_color .. "Contact:</color>\t"		..text_color..self.Contact.."</color>\n\n" 				end
		if ( self.Purpose != nil
			and self.Purpose != "" ) 		then str = str .. title_color .. "Purpose:</color>\n\t"		..text_color..self.Purpose.."</color>\n\n" 				end
		if ( self.Instructions != nil
			and self.Instructions != "" ) 	then str = str .. title_color .. "Instructions:</color>\n\t"	..text_color..self.Instructions.."</color>\n" 			end
		if ( self.Note != nil 
			and self.Note != "" ) 			then str = str .. title_color .. "Note:</color>\n\t"			..text_color..self.Note.."</color>\n" 					end
		
		str = str .. title_color .. "~ Ammo ~ </color>" .. text_color .. ammos .. "</color>\n\n"
		
		if ( self.Lore != nil 
		and self.Lore != "" ) 				then str = str ..text_color .. "..."						..self.Lore.."</color>\n" 					end
		
		
		
		str = str .. "</font>"
		
		self.InfoMarkup = markup.Parse( str, 250 )
	end
	
	surface.SetDrawColor( 60, 60, 60, alpha )
	surface.SetTexture( self.SpeechBubbleLid )
	
	surface.DrawTexturedRect( x, y - 64 - 5, 128, 64 ) 
	draw.RoundedBox( 8, x - 5, y - 6, 260, self.InfoMarkup:GetHeight() + 18, Color( 60, 60, 60, alpha ) )
	
	self.InfoMarkup:Draw( x+5, y+5, nil, nil, alpha )
	
end

function SWEP:CL_Init_Check(arg)
	print(tostring(arg))
	return true -- Yep
end

/*---------------------------------------------------------
	Checks the objects before any action is taken
	This is to make sure that the entities havent been removed
---------------------------------------------------------*/
function SWEP:DrawWeaponSelection( x, y, wide, tall, alpha )
	-- self.WepSelectFont = "CSSelectIcons"
	local hl2 = (self.HL2WeaponDraw == true)
	local dods = (self.DoDWeaponDraw == true)
	local css = (self.HL2WeaponDraw ~= true)and(self.DoDWeaponDraw ~= true)

	if not self.WepSelectLetter then 
		self.WepSelectLetter 	= self.IconLetter
		if css then
			self.WepSelectFont		= "CSSelectIcons"
		elseif hl2 then
			self.WepSelectFont		= "HL2SelectIcons"
		elseif dods then
			self.WepSelectFont		= "DoDSelectIcons"
		else
			self.WepSelectFont		= "CSSelectIcons"
		end
		--
	end

	local c1 = Color( 255, 125, 55, math.Rand(10, 120) )
	local c2 = Color( 255, 135, 70, math.Rand(10, 120) )
		
	if css then
		
		-- HLKillIcons -- hl2mp
		draw.SimpleText( self.WepSelectLetter, "CSSelectIcons", x + wide/2, y + tall*0.2, self.IconColor	, TEXT_ALIGN_CENTER )
	
		-- Nobody thinks this is Tony Hawks game Garry...
		draw.SimpleText( self.WepSelectLetter, "CSSelectIcons", x + wide/2 + math.Rand(-10, 10)	, y + tall*0.2+ math.Rand(-8, 8), 				c1,	 TEXT_ALIGN_CENTER )
		draw.SimpleText( self.WepSelectLetter, "CSSelectIcons", x + wide/2 + math.Rand(-6, 6)	, y + tall*0.2+ math.Rand(-12, 12),				c2,	TEXT_ALIGN_CENTER )
	elseif ( hl2 ) then
		-- Draw Half Life 2
		self.WepSelectFont = "HLSelectIcons"
		draw.SimpleText( self.WepSelectLetter, self.WepSelectFont, x + wide/2, y + tall*0.2, Color( 255, 120, 45, 255 ), TEXT_ALIGN_CENTER )

		draw.SimpleText( self.WepSelectLetter, self.WepSelectFont, x + wide/2 + math.Rand(-10, 10), y + tall*0.2+ math.Rand(-8, 8), c1, TEXT_ALIGN_CENTER )
		draw.SimpleText( self.WepSelectLetter, self.WepSelectFont, x + wide/2 + math.Rand(-6, 6), y + tall*0.2+ math.Rand(-12, 12), c2, TEXT_ALIGN_CENTER )
	elseif ( dods ) then
		-- Draw Day of Defeat
		self.WepSelectFont = "DoDSelectIcons"
		draw.SimpleText( self.WepSelectLetter, self.WepSelectFont, x + wide/2, y + tall*0.2, Color( 255, 120, 45, 255 ), TEXT_ALIGN_CENTER )

		draw.SimpleText( self.WepSelectLetter, self.WepSelectFont, x + wide/2 + math.Rand(-10, 10), y + tall*0.2+ math.Rand(-8, 8), c1, TEXT_ALIGN_CENTER )
		draw.SimpleText( self.WepSelectLetter, self.WepSelectFont, x + wide/2 + math.Rand(-6, 6), y + tall*0.2+ math.Rand(-12, 12), c2, TEXT_ALIGN_CENTER )
	end
	--[[
	if CLIENT then
		// Set us up the texture
		surface.SetDrawColor( color_transparent )
		surface.SetTextColor( 255, 120, 45, alpha )
		surface.SetFont( self.WepSelectFont or self.IconLetter )
		local w, h = surface.GetTextSize( self.WepSelectLetter or self.IconLetter )
		
		// Draw that mother
		surface.SetTextPos( x + ( wide / 2 ) - ( w / 2 ),
						y + ( tall / 2 ) - ( h / 2 ) )
		surface.DrawText( self.WepSelectLetter or self.IconLetter )
	end
	--]]
		-- Draw weapon info box
	self:PrintWeaponInfo( x + wide + 20, y + tall * 0.95, alpha )
	
end

function SWEP:SetupCrosshairColor()
	-- Everyone likes console values for crosshair color
	-- If there IS NOT a crosshair_colorster (wont be first time)
	if not self.crosshair_colorstr then
		
		if GetConVarString("cl_crosshair_color") then
			self.crosshair_colorstr = "255 120 45 120"
		else
			self.crosshair_colorstr = GetConVarString("cl_crosshair_color") or "255 120 45 120"
		end
		
		-- Crosshair_colorstr DEFINED ABOVE
		-- If there IS (depending on if the convar is created/defined) crosshair_colorstr
		
		-- if Color String ISNT null (con var is empty)
		if self.crosshair_colorstr then
			-- Generate color from str
			self.crosshair_color = string_split(tostring(self.crosshair_colorstr), " ")
			-- Put that shit into a table, know as crosshair_color.
			self.crosshair_colorCL = Color(	tonumber(self.crosshair_color[1]),
											tonumber(self.crosshair_color[2]),
											tonumber(self.crosshair_color[3]),
											tonumber(self.crosshair_color[4])
										)
		else
		// No con variable value, Default
			self.crosshair_colorCL 		= Color(255, 120, 45, 120)
			self.crosshair_color		= {255, 120, 45, 120}
			self.crosshair_colorstr 	= "255 120 45 120"
			
			
		end
		// Oh but if there is, then just set it...
	elseif self.Owner:GetInfo("cl_crosshair_color") ~= self.crosshair_colorstr then
		/* Get the info, no problems
		// How it SHOULD break down
		// 1. Define the colorstr
		// 2. Explode the string at spaces to derive an array
		// 3. Make Crosshair_color into a color var, with the values of its own array (data change happens after arguments are entered)
		*/
		/* Preliminary definition, Just Cause lol
		self.crosshair_color[1] = 255
		self.crosshair_color[2] = 120
		self.crosshair_color[3] = 45
		self.crosshair_color[4] = 120
		*/
		if (avoid == true) then
			self.crosshair_colorstr 	= "255 120 45 120"
		else
			self.crosshair_colorstr 		= GetConVarString("cl_crosshair_color") or "255 120 45 120"
		end
		self.crosshair_color 			= string_split(" ", self.crosshair_colorstr)
		
		if (self.crosshair_color == nil or type(self.crosshair_color) != "table") then
			if (#self.crosshair_color <4) then
			ErrorNoHalt("ITS JUST NOT A TABLE OF THE RIGHT SPECS! " .. type(self.crosshair_color))
			else
			ErrorNoHalt("ITS JUST NOT A TABLE OF THE RIGHT DIM " .. #self.crosshair_color)
			end
		end
		self.crosshair_colorCL 			= Color(self.crosshair_color[1], self.crosshair_color[2], self.crosshair_color[3], self.crosshair_color[4] or 120)
		--											Red						Green					Blue						Alpha
	end
end
--]]

/*---------------------------------------------------------
	DrawHUD
	
	Just a rough mock up showing how to draw your own crosshair.
---------------------------------------------------------*/
function SWEP:DrawHUD()
	
	if not ( self.Weapon:Clip1() > 0 ) or (isTbl( self.Scope ) and self.Scope[1] == 0) then return end
	self:DrawSight_CrossHairs()
	
	--[[ SEE THE FOLLOWING FUNCTION
	if self:CanScopeIn(true) then
		
		self:DrawSight_Scope()
	else
		--self:DrawSight_CrossHairs()
		--ErrorNoHalt(" . ")
	end
	--]]
end

function SWEP:DrawSight_CrossHairs()
	-- Major check
	if (GetConVarNumber("cl_drawhud") == 0) and (self.DrawCrosshair == false) then return end
	
	-- if isTbl( self.Scope ) then return end -- If its a sniper, then abort, we shouldnt draw it?
	-- IN CROSSHAIRS,
	-- This is probably going to change to a setting

	local x, y 			= ScrW() / 2.0, ScrH() / 2.0 -- Never Touch
	local LastShootTime = self.Weapon:GetNetworkedFloat( "LastShootTime", 0 )// Scale the size of the crosshair according to how long ago we fired our weapon
	local cone 			= self.Primary.Cone --self:CurrentCone()
	local pwr 			= self.Primary.Recoil
	local addz			= self.Owner:GetViewPunchAngles() -- @@@ Adjust height of XHAIR

	if ( self.Owner == LocalPlayer() and self.Owner:ShouldDrawLocalPlayer() ) then
		-- Trace
		local tr = util.GetPlayerTrace( self.Owner )
		tr.mask = bit.bor( CONTENTS_SOLID,CONTENTS_MOVEABLE,CONTENTS_MONSTER, CONTENTS_WINDOW,CONTENTS_DEBRIS,CONTENTS_GRATE,CONTENTS_AUX )
		--( CONTENTS_SOLID+CONTENTS_MOVEABLE+CONTENTS_MONSTER+CONTENTS_WINDOW+CONTENTS_DEBRIS+CONTENTS_GRATE+CONTENTS_AUX ) -- List the enums that should mask the crosshair on camrea/thridperson
		local trace = util.TraceLine( tr )
		
		local coords = trace.HitPos:ToScreen()
		x, y = coords.x, coords.y
	else
		--
		local trace = util.TraceLine ({
			start = LocalPlayer():GetShootPos(),
			endpos = LocalPlayer():GetShootPos() + LocalPlayer():GetAimVector() * 4096,
			filter = LocalPlayer(),
			mask = MASK_SHOT 
		}).HitPos

		local screen = trace:ToScreen()
		x = screen.x
		y = screen.y
		
		--]]
	end 
	
	if ( self.Weapon:GetNetworkedBool( "Ironsights" ) or self.Owner:InVehicle() ) then
		surface.DrawCircle( x, y, 1, Color(255,250,250) ) -- DOT WHITE
		surface.DrawCircle( x, y, 2, Color(0,0,0) ) -- DOT BLACK
		return -- Simple as that
	end

	local scale =  math.max( GetConVarNumber("cl_crosshair_scale"), (cone * 10) )
	local delta =  math.Clamp( CurTime() - LastShootTime, 0, 1 ) -- Adjust for recoil	
	local ratio = math.Clamp( 2 - delta, 1.00, 2.00 ) 
	local scaler = scale * ratio
	
	-- UN SCALED VALUES
	local anchor	= 40*scaler
	local gap 		= math.Clamp( anchor, 1.00, (ScrH() / 2)-100 )--  For close	
	local length 	= math.Clamp( cl_crosshair_l:GetInt(), 1.00 , (ScrH() / 2)-100 ) -- gap + 20 * scale

	local heat = 0
	local color = {}
			color[1] = cl_crosshair_r:GetInt()
			color[2] = cl_crosshair_g:GetInt()
			color[3] = cl_crosshair_b:GetInt()
			color[4] = cl_crosshair_a:GetInt()
	--color = Color(color) 

	local center_y = y
	local center_x = x
	local addy = 2
	local addx = 2
	local near 	= 40*scale-- just scale
	local far	= length+gap

	local x_l_c		= (x - near)		*1 	-- x left close
	local x_l_f		= (x - far)			*1 	-- x left far
	local x_r_c		= (x + near)		*1 	-- x right close
	local x_r_f		= (x + far)			*1 	-- x right far
	
	local y_u_c		= (y - near)		*1 -- y UP close
	local y_u_f		= (y - (far*0.7))  	*1 -- y UP far
	local y_d_c		= (y + near)		*1 -- y DOWN close
	local y_d_f		= (y + (far*0.7))	*1 -- y DOWN far

	local user_clr = Color(color[1], color[2], color[3], color[4])
	--self:DebugTalk("Crosshair Color: "..tostring(user_clr))
	surface.SetDrawColor(user_clr)
	-- XHAIR TYPE SETTINGS --
	local maxty = 12
	local ty = math.Clamp(GetConVarNumber("cl_crosshair_type"),0, maxty ) -- MAX
	
	if ty == 0 then
		-- Just the circle
	elseif ty == -1 then
		-- for reloading
		-- get reloading time
		return
	elseif ty == 1 then
		--   |
		-- - o -
		--   |
		surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
		surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
		surface.DrawLine( center_x, y_u_f, center_x, y_u_c )	// Top/Up
		surface.DrawLine( center_x, y_d_f, center_x, y_d_c )	// Bottom/Down

	elseif ty == 2 then
		--   ||
		-- = o =
		--   ||
		surface.DrawLine( x_l_f, center_y-addy, x_l_c, center_y-addy )	// Left T
		surface.DrawLine( x_r_f, center_y-addy, x_r_c, center_y-addy )	// Right T
		surface.DrawLine( center_x-addx, y_u_f, center_x-addx, y_u_c )	// Top/Up  L 
		surface.DrawLine( center_x-addx, y_d_f, center_x-addx, y_d_c )	// Bottom/Down  L
		
		surface.DrawLine( x_l_f, center_y+addy, x_l_c, center_y+addy )	// Left B
		surface.DrawLine( x_r_f, center_y+addy, x_r_c, center_y+addy )	// Right B
		surface.DrawLine( center_x+addx, y_u_f, center_x+addx, y_u_c )	// Top/Up  R 
		surface.DrawLine( center_x+addx, y_d_f, center_x+addx, y_d_c )	// Bottom/Down  R

	elseif ty == 3 then
		-- 
		-- - o -
		--   |
		
		surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
		surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
		surface.DrawLine( center_x, y_d_f, center_x, y_d_c )	// Bottom/Down

	elseif ty == 4 then
		--   |
		-- > o <
		--   ^
		surface.DrawLine( x_l_f, y_u_c, x_l_c, center_y )	// Left T
		surface.DrawLine( x_r_f, y_u_c, x_r_c, center_y )	// Right T
		
		surface.DrawLine( x_l_f, y_d_c, x_l_c, center_y )	// Left B
		surface.DrawLine( x_r_f, y_d_c, x_r_c, center_y )	// Right B
	
		surface.DrawLine( x_l_c, y_d_f, center_x, y_d_c )	// Bottom/Down  L
		surface.DrawLine( x_r_c, y_d_f, center_x, y_d_c )	// Bottom/Down  R
		
		surface.DrawLine( center_x, y_u_f, center_x, y_u_c )	// Top/Up
		surface.DrawCircle( center_x, y_u_f, 2, user_clr ) -- Top
	elseif ty == 5 then
		--   .
		-- ' o '
		--   '
		--surface.DrawTexturedRect(
		surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
		surface.DrawCircle( center_x, y_u_c, 2, user_clr ) -- Top
		surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
		
		
	elseif ty == 6 then
		-- 
		--    .
		-- '' o ''
		--    '
		--surface.DrawTexturedRect(
		surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
		surface.DrawCircle( center_x, y_u_c, 2, user_clr ) -- Top
		surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
		
		surface.DrawCircle( x_l_f, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_f, center_y, 2, user_clr ) -- Right
	elseif ty == 7 then
		-- 
		--   
		-- '-o-'
		--   '
		--surface.DrawTexturedRect(
		surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
		surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
		surface.DrawLine( center_x, y_d_f, center_x, y_d_c )	// Bottom/Down
		
		surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
		surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
	elseif ty == 8 then
		--   
		-- '=o='
		--   '
		surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
		surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
		
		surface.DrawLine( x_l_f, center_y-addy, x_l_c, center_y-addy )	// Left T
		surface.DrawLine( x_r_f, center_y-addy, x_r_c, center_y-addy )	// Right T
		surface.DrawLine( center_x-addx, y_d_f, center_x-addx, y_d_c )	// Bottom/Down  L
		
		surface.DrawLine( x_l_f, center_y+addy, x_l_c, center_y+addy )	// Left B
		surface.DrawLine( x_r_f, center_y+addy, x_r_c, center_y+addy )	// Right B
		surface.DrawLine( center_x+addx, y_d_f, center_x+addx, y_d_c )	// Bottom/Down  R
		
	elseif ty == 9 then
		--   
		-- '-o-'
		--   '
		surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
		surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
		
		surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
		surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
	elseif ty == 10 then -- 			
		--	  o
		--	  |
		--	  .
		surface.DrawLine( center_x, y_d_f, center_x, center_y )	// Bottom/Down
		surface.DrawCircle( center_x, math.max(y_d_c, y_d_c*((anchor/near)*0.9)), 2, user_clr ) -- Bottom
	elseif ty == 11 then
		--	  . 
		--    .
		-- '' o ''
		--    '
		--	  .
		--surface.DrawTexturedRect(
		surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
		surface.DrawCircle( center_x, y_u_c, 2, user_clr ) -- Top
		surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
		
		surface.DrawCircle( x_l_f, center_y, 2, user_clr ) -- Left
		surface.DrawCircle( x_r_f, center_y, 2, user_clr ) -- Right
		surface.DrawCircle( center_x, y_u_f, 2, user_clr ) -- Top
		surface.DrawCircle( center_x, y_d_f, 2, user_clr ) -- Bottom
	elseif ty == 12 then
		--   '
		--
		-- ' o '
		--
		--   '
	elseif ty == 13 then
	elseif ty == 14 then
	elseif ty == 15 then
	
	else
		SetConVar("cl_crosshair_type", 6)
	end

-- HEAT
	if (self.Heat == nil) then
		surface.DrawCircle( center_x, center_y, (gap/2), Color(255,140,45, 100) ) -- Cone Circle
		return 
	else
		heat = self.Heat -- SMH x2

		local black = Vector(0,0,0)
		local white = Vector(255,255,255)
		local heat = LerpVector( heat/(255*3), white, black)

		--surface.SetDrawColor(255-math.max( (255*2) - heat, 0), math.max(255-heat,0), 25, 250)
		surface.DrawCircle( center_x, center_y, (near/2), Color(heat[1],heat[2],heat[3], 250)) -- Cone Circle
		
		
		surface.DrawLine( (x - far -5), center_y, (x - near), center_y )	// Left HEAT
		surface.DrawLine( (x + far +5), center_y, (x + near), center_y )	// Right HEAT
	end -- END IF DRAW
end

function SWEP:CanScopeIn( ignore_iron_value )
	if true then return false end

	local b2,b3,b4
	if not ignore_iron_value then 
		ignore_iron_value = false
	end
	
	b2 = ignore_iron_value and not ( self.Weapon:GetNetworkedBool( "Ironsights" ) ) 
	b3 = not isTbl( self.Scope ) 
	b4 = isTbl( self.Scope ) and not(self.Scope[1] > 0 and self.Scope[1] <= self.ScopeMAX ) 
	-- CHECK ALL NEGATIONS
	if not(b2 and b3 and b4) then
		return false
	end
	
	return true
end
function SWEP:DrawSight_Scope()
		
	if not ( self.Weapon:Clip1() > 0 ) or (isTbl( self.Scope ) and self.Scope[1] == 0) then return end

	local x, y = ScrW() / 2.0, ScrH() / 2.0 -- Never Touch
	local LastShootTime = self.Weapon:GetNetworkedFloat( "LastShootTime", 0 )// Scale the size of the crosshair according to how long ago we fired our weapon
	local cone = self.Primary.Cone
	local pwr = self.Primary.Recoil

	if ( self.Owner == LocalPlayer() and self.Owner:ShouldDrawLocalPlayer() ) then
		local tr = util.GetPlayerTrace( self.Owner )
		tr.mask = bit.bor( CONTENTS_SOLID,CONTENTS_MOVEABLE,CONTENTS_MONSTER, CONTENTS_WINDOW,CONTENTS_DEBRIS,CONTENTS_GRATE,CONTENTS_AUX )
		--( CONTENTS_SOLID+CONTENTS_MOVEABLE+CONTENTS_MONSTER+CONTENTS_WINDOW+CONTENTS_DEBRIS+CONTENTS_GRATE+CONTENTS_AUX ) -- List the enums that should mask the crosshair on camrea/thridperson
		local trace = util.TraceLine( tr )
		
		local coords = trace.HitPos:ToScreen()
		x, y = coords.x, coords.y
	else
		--[
		local trace = util.TraceLine ({
			start = LocalPlayer():GetShootPos(),
			endpos = LocalPlayer():GetShootPos() + LocalPlayer():GetAimVector() * 4096,
			filter = LocalPlayer(),
			mask = MASK_SHOT 
		}).HitPos

		local screen = trace:ToScreen()
		x = screen.x
		y = screen.y
		
		--]]
	end 
	

	if (GetConVarNumber("cl_drawhud") != 0) or (self.DrawCrosshair) then
	/* Draw an awesome crosshair
	
				cl_crosshairscale																@@@CROSSHAIR
	*/
		-- (2 - math.Clamp( (CurTime() - LastShootTime) * 5, 0.0, 1.0 ))
		local scale =  math.max( GetConVarNumber("cl_crosshair_scale"), (self.Primary.Cone * 50) )
		
		local delta =  math.Clamp(CurTime() - LastShootTime, 0, 1 ) -- Adjust for recoil	
		local ratio = math.Clamp( 2-delta, 1.00, 2.00 ) 
		
		local scaler = scale * ratio
		
		
		
		-- UN SCALED VALUES
		local gap 		= math.Clamp( 40*scaler, 1.00, (ScrH() / 2)-100 )--  For close	
		local length 	= math.Clamp( cl_crosshair_l:GetInt(), 1.00 , (ScrH() / 2)-100 ) -- gap + 20 * scale

		local heat = 0
		local color = {}
		color[1] = cl_crosshair_r:GetInt()
		color[2] = cl_crosshair_g:GetInt()
		color[3] = cl_crosshair_b:GetInt()
		color[4] = cl_crosshair_a:GetInt()
		--color = Color(color) 

		local center_y = y
		local center_x = x
		local addy = 2
		local addx = 2
		local near 	= gap
		local far	= 0

		local x_l_c		= (x - near)	*1 	-- x left close
		local x_l_f		= (0)		*1 	-- x left far
		local x_r_c		= (x + near)	*1 	-- x right close
		local x_r_f		= (x+x)		*1 	-- x right far
		
		local y_u_c		= (y - near)	*1 -- y UP close
		local y_u_f		= (0)  	*1 -- y UP far
		local y_d_c		= (y + near)	*1 -- y DOWN close
		local y_d_f		= (y+y)		*1 -- y DOWN far
		
		
		// No crosshair when ironsights is on
		if ( self.Weapon:GetNetworkedBool( "Ironsights" ) or (self.Owner:InVehicle()) ) then
			surface.DrawCircle( center_x, center_y, 1, Color(255,250,250) ) -- DOT WHITE
			surface.DrawCircle( center_x, center_y, 2, Color(0,0,0) ) -- DOT BLACK
			return
		end
		
		local user_clr = Color(color[1], color[2], color[3], color[4])
		surface.SetDrawColor(user_clr)
		local maxty = 10
		local ty = math.Clamp(GetConVarNumber("cl_crosshair_type"),0, maxty ) -- MAX
		
		-- @@@EDIT ME!
		-- Need scope sights similar 
		-- to their crosshair counterparts
		
		if ty == 0 then
			-- notin
		elseif ty == -1 then
			-- for reloading
			
		elseif ty == 1 then
			--   |
			-- - o -
			--   |
			surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
			surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
			surface.DrawLine( center_x, y_u_f, center_x, y_u_c )	// Top/Up
			surface.DrawLine( center_x, y_d_f, center_x, y_d_c )	// Bottom/Down

		elseif ty == 2 then
			--   ||
			-- = o =
			--   ||
			surface.DrawLine( x_l_f, center_y-addy, x_l_c, center_y-addy )	// Left T
			surface.DrawLine( x_r_f, center_y-addy, x_r_c, center_y-addy )	// Right T
			surface.DrawLine( center_x-addx, y_u_f, center_x-addx, y_u_c )	// Top/Up  L 
			surface.DrawLine( center_x-addx, y_d_f, center_x-addx, y_d_c )	// Bottom/Down  L
			
			surface.DrawLine( x_l_f, center_y+addy, x_l_c, center_y+addy )	// Left B
			surface.DrawLine( x_r_f, center_y+addy, x_r_c, center_y+addy )	// Right B
			surface.DrawLine( center_x+addx, y_u_f, center_x+addx, y_u_c )	// Top/Up  R 
			surface.DrawLine( center_x+addx, y_d_f, center_x+addx, y_d_c )	// Bottom/Down  R

		elseif ty == 3 then
			-- 
			-- - o -
			--   |
			
			surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
			surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
			surface.DrawLine( center_x, y_d_f, center_x, y_d_c )	// Bottom/Down

		elseif ty == 4 then
			--   |
			-- > o <
			--   ^
			surface.DrawLine( x_l_f, y_u_c, x_l_c, center_y )	// Left T
			surface.DrawLine( x_r_f, y_u_c, x_r_c, center_y )	// Right T
			
			surface.DrawLine( x_l_f, y_d_c, x_l_c, center_y )	// Left B
			surface.DrawLine( x_r_f, y_d_c, x_r_c, center_y )	// Right B
		
			surface.DrawLine( x_l_c, y_d_f, center_x, y_d_c )	// Bottom/Down  L
			surface.DrawLine( x_r_c, y_d_f, center_x, y_d_c )	// Bottom/Down  R
			
			surface.DrawLine( center_x, y_u_f, center_x, y_u_c )	// Top/Up
			surface.DrawCircle( center_x, y_u_f, 2, user_clr ) -- Top
		elseif ty == 5 then
			--   .
			-- ' o '
			--   '
			--surface.DrawTexturedRect(
			surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
			surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
			surface.DrawCircle( center_x, y_u_c, 2, user_clr ) -- Top
			surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
			
			
		elseif ty == 6 then
			-- 
			--    .
			-- '' o ''
			--    '
			--surface.DrawTexturedRect(
			surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
			surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
			surface.DrawCircle( center_x, y_u_c, 2, user_clr ) -- Top
			surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
			
			surface.DrawCircle( x_l_f, center_y, 2, user_clr ) -- Left
			surface.DrawCircle( x_r_f, center_y, 2, user_clr ) -- Right
		elseif ty == 7 then
			-- 
			--   
			-- '-o-'
			--   '
			--surface.DrawTexturedRect(
			surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
			surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
			surface.DrawLine( center_x, y_d_f, center_x, y_d_c )	// Bottom/Down
			
			surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
			surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
		elseif ty == 8 then
			--   
			-- '=o='
			--   ' 
			surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
			surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
			surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
			
			surface.DrawLine( x_l_f, center_y-addy, x_l_c, center_y-addy )	// Left T
			surface.DrawLine( x_r_f, center_y-addy, x_r_c, center_y-addy )	// Right T
			surface.DrawLine( center_x-addx, y_d_f, center_x-addx, y_d_c )	// Bottom/Down  L
			
			surface.DrawLine( x_l_f, center_y+addy, x_l_c, center_y+addy )	// Left B
			surface.DrawLine( x_r_f, center_y+addy, x_r_c, center_y+addy )	// Right B
			surface.DrawLine( center_x+addx, y_d_f, center_x+addx, y_d_c )	// Bottom/Down  R
			
		elseif ty == 9 then
			--   
			-- '-o-'
			--   '
			surface.DrawCircle( x_l_c, center_y, 2, user_clr ) -- Left
			surface.DrawCircle( x_r_c, center_y, 2, user_clr ) -- Right
			surface.DrawCircle( center_x, y_d_c, 2, user_clr ) -- Bottom
			
			surface.DrawLine( x_l_f, center_y, x_l_c, center_y )	// Left
			surface.DrawLine( x_r_f, center_y, x_r_c, center_y )	// Right
		elseif ty == 10 then -- 
			--   
			-- '-o-'
			--   '
		elseif ty == 11 then
		elseif ty == 12 then
		elseif ty == 13 then
		elseif ty == 14 then
		elseif ty == 15 then
		
		else
			cl_crosshair_type = 5
		end
	
	-- HEAT
		if (self.Heat == nil) then
			surface.DrawCircle( center_x, center_y, (near/2), Color(255,140,45, 100) ) -- Cone Circle
			return 
		else
			heat = self:GetHeat() -- SMH

			local black = Vector(0,0,0)
			local white = Vector(255,255,255)
			local ratio_g = heat/(255*3)
			local ratio_r
			
			if (heat <= 255) then
			
			elseif (heat > heat <= 255) then
			
			elseif(heat > 255 and heat <= 255*2) then
			
			elseif(heat > 255*2 and heat <= 255*3) then
			
			end
			-- Linear Interpolation of Vector
			-- Fadess between a colors via a ratio
			local heat = LerpVector( 0.5, white, black)
			local x

			--surface.SetDrawColor(255-math.max( (255*2) - heat, 0), math.max(255-heat,0), 25, 250)
			surface.DrawCircle( center_x, center_y, (near/2), Color(heat[1],heat[2],heat[3], 250)) -- Cone Circle
			
			
			surface.DrawLine( (x - far -5), center_y, (x - near), center_y )	// Left HEAT
			surface.DrawLine( (x + far +5), center_y, (x + near), center_y )	// Right HEAT
			

			
		end -- END IF DRAW
	end
end

/*---------------------------------------------------------
	Precache
---------------------------------------------------------*/
function SWEP:Precache()
	-- Cache before use
    util.PrecacheSound( self.Primary.Sound )
    util.PrecacheSound( self.Secondary.Sound )
--[[
    util.PrecacheSound( self.Primary.SuppressedSound )
    util.PrecacheSound( self.Primary.ReloadSound )
	--]]
end