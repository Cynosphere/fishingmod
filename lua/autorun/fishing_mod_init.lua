if SERVER then
	AddCSLuaFile("autorun/fishing_mod_init.lua")
	AddCSLuaFile("fishing_mod/sh_init.lua")
	AddCSLuaFile("fishing_mod/cl_init.lua")
	resource.AddFile("sound/fishingrod/reel.wav")
end

hook.Add("InitPostEntity", "Init Fish Mod", function()
	include("fishing_mod/sh_init.lua")
	if SERVER then
		include("fishing_mod/sv_init.lua")
	else
		include("fishing_mod/cl_init.lua")
	end
end)