/* Getin into entities now... */
ENT.Type 				= "anim"
ENT.Base 				= "base_gmodentity"
ENT.PrintName 			= "Magazine"

ENT.Author 				= "Nova Prospekt"
ENT.Category 			= "Fiery Items"
ENT.Classname			= "sent_magazine" --
ENT.Spawnable 			= !true
ENT.AdminSpawnable 		= true
ENT.Information	 		= "A magazine which might hold ammo" 


if(CLIENT)then
	function ENT:Initialize()
	end

end
