<<<<<<< HEAD
/* Shared.lua */

ErrorNoHalt("\n\t\tMAGS SHARED\n\n")

=======
/* Getin into entities now... */
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
ENT.Type 				= "anim"
ENT.Base 				= "base_gmodentity"
ENT.PrintName 			= "Magazine"

ENT.Author 				= "Nova Prospekt"
ENT.Category 			= "Fiery Items"
<<<<<<< HEAD
ENT.Classname			= "sent_magazine" -- The folders name
ENT.Spawnable 			= !true
ENT.AdminSpawnable 		= true
ENT.Information	 		= "A magazine which may hold ammo"

ENT.AMMOTYPE			= "pistol"
ENT.AMOUNT				= 1 
=======
ENT.Classname			= "sent_magazine" --
ENT.Spawnable 			= !true
ENT.AdminSpawnable 		= true
ENT.Information	 		= "A magazine which might hold ammo" 


if(CLIENT)then
	function ENT:Initialize()
	end

end
>>>>>>> 1f84fd01b25195a8a4ec6e4641a1cffdd4a0cd67
