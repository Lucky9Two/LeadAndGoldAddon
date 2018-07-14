
AddCSLuaFile()

-------------------------------------------------------
-------------------------------------------------------
--	Lead & Gold: Gangs of the Wild West Addon
-------------------------------------------------------
--	Models ported by Joe: 
--	https://steamcommunity.com/id/SergerantJoe
--	https://steamcommunity.com/sharedfiles/filedetails/?id=590722370
--	NPCGroups by NeoTanks:
--	http://steamcommunity.com/id/TheDreadedNeotank
--	http://steamcommunity.com/sharedfiles/filedetails/?id=136077464
--	Enhanced L&G Addon by V92
--	https://steamcommunity.com/id/JesseVanover/
--	
-------------------------------------------------------
-------------------------------------------------------

if !ConVarExists( "npcg_accuracy_lag_blaster" ) then		CreateConVar(	"npcg_accuracy_lag_blaster",			"1",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_accuracy_lag_deputy" ) then			CreateConVar(	"npcg_accuracy_lag_deputy",				"3",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_accuracy_lag_gunslinger" ) then		CreateConVar(	"npcg_accuracy_lag_gunslinger",			"1",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_accuracy_lag_trapper" ) then		CreateConVar(	"npcg_accuracy_lag_trapper",			"4",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end

if !ConVarExists( "npcg_squad_lag_blaster" ) then			CreateConVar(	"npcg_squad_lag_blaster",	 			"1",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_squad_lag_deputy" ) then			CreateConVar(	"npcg_squad_lag_deputy",	 			"1",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_squad_lag_gunslinger" ) then		CreateConVar(	"npcg_squad_lag_gunslinger",	 		"1",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_squad_lag_trapper" ) then			CreateConVar(	"npcg_squad_lag_trapper",	 			"1",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end

if !ConVarExists( "npcg_wakeradius_lag_blaster" ) then		CreateConVar(	"npcg_wakeradius_lag_blaster", 			"150",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_wakeradius_lag_deputy" ) then		CreateConVar(	"npcg_wakeradius_lag_deputy", 			"150",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_wakeradius_lag_gunslinger" ) then	CreateConVar(	"npcg_wakeradius_lag_gunslinger", 		"150",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end
if !ConVarExists( "npcg_wakeradius_lag_trapper" ) then		CreateConVar(	"npcg_wakeradius_lag_trapper", 			"150",		{	FCVAR_REPLICATED, FCVAR_ARCHIVE }	) end

local	function NPCGLaGConVars(Panel)

	Panel:AddControl(	"Header",		{	Text = "LaG Notice",	Description = [[NPCGroups by NeoTanks
		Lead & Gold models ported by Joe
		Enhanced/NPCGs/Updates by V92
	]]})
	Panel:AddControl(	"Header",		{	Text = "LaG Settings",	Description = [[
		Settings for Lead & Gold NPCs
		Changes take place for new NPCs only.
		Sorry, that's how the game engine works - I can't change that.
	]]})							

	Panel:AddControl(	"Header",		{	Text = "LaGNPCGACC",				Description	= "On a scale of George Custer (0) to Calamity Jane (4), how accurate do you want your NPCs to be?"	})							
	Panel:AddControl(	"Slider",		{	Label = "Accuracy: Blaster",		Type		= "Integer",	Min = 0,	Max = 4,	Command = "npcg_accuracy_lag_blaster",	})
	Panel:AddControl(	"Slider",		{	Label = "Accuracy: Deputy",			Type		= "Integer",	Min = 0,	Max = 4,	Command = "npcg_accuracy_lag_deputy",	})
	Panel:AddControl(	"Slider",		{	Label = "Accuracy: Gunslinger",		Type		= "Integer",	Min = 0,	Max = 4,	Command = "npcg_accuracy_lag_gunslinger",	})
	Panel:AddControl(	"Slider",		{	Label = "Accuracy: Trapper",		Type		= "Integer",	Min = 0,	Max = 4,	Command = "npcg_accuracy_lag_trapper",	})

	Panel:AddControl(	"Header",		{	Text = "LaGNPCGSquad",				Description	= "Do the NPCs use squads?"	})							
	Panel:AddControl(	"CheckBox",		{	Label = "Squads: Blaster",			Command		= "npcg_squad_lag_blaster"	})	
	Panel:AddControl(	"CheckBox",		{	Label = "Squads: Deputy",			Command		= "npcg_squad_lag_deputy"	})	
	Panel:AddControl(	"CheckBox",		{	Label = "Squads: Gunslinger",		Command		= "npcg_squad_lag_gunslinger"	})	
	Panel:AddControl(	"CheckBox",		{	Label = "Squads: Trapper",			Command		= "npcg_squad_lag_trapper"	})	

	Panel:AddControl(	"Header",		{	Text = "LaGNPCGWaker",				Description	= "The Presence Atrtibute of the NPCs"	})							
	Panel:AddControl(	"Slider",		{	Label = "Wake: Blaster",			Type		= "Integer",	Min = 1,	Max = 8192,	Command = "npcg_wakeradius_lag_blaster",	})
	Panel:AddControl(	"Slider",		{	Label = "Wake: Deputy",				Type		= "Integer",	Min = 1,	Max = 8192,	Command = "npcg_wakeradius_lag_deputy",	})
	Panel:AddControl(	"Slider",		{	Label = "Wake: Gunslinger",			Type		= "Integer",	Min = 1,	Max = 8192,	Command = "npcg_wakeradius_lag_gunslinger",	})
	Panel:AddControl(	"Slider",		{	Label = "Wake: Trapper",			Type		= "Integer",	Min = 1,	Max = 8192,	Command = "npcg_wakeradius_lag_trapper",	})

end
local 	function NPCGLaGToolMenu()	spawnmenu.AddToolMenuOption( "Options", "V92", "NPCG: LaG", "NPCG: LaG", "", "", NPCGLaGConVars)	end
hook.Add( "PopulateToolMenu", "NPCGLaGToolMenu", NPCGLaGToolMenu)

-------------------------------------------------------
-------------------------------------------------------
--	Players
-------------------------------------------------------
-------------------------------------------------------
function AddPlayerModel( name, model )	player_manager.AddValidModel( name, model )	end
function AddPlayerHands( name, model, skin, bodygroup )	player_manager.AddValidHands( name, model, skin, bodygroup )	end

AddPlayerModel("L&G Blaster", "models/jessev92/leadandgold/characters/blaster_ply.mdl" )
AddPlayerHands( "L&G Blaster", "models/jessev92/leadandgold/weapons/arms_blaster.mdl", 0, "00000000" )
list.Set( "PlayerOptionsAnimations", "L&G Blaster", 	{ "menu_combine" } )

AddPlayerModel("L&G Deputy", "models/jessev92/leadandgold/characters/deputy_ply.mdl" )
AddPlayerHands( "L&G Deputy", "models/jessev92/leadandgold/weapons/arms_deputy.mdl", 0, "00000000" )
list.Set( "PlayerOptionsAnimations", "L&G Deputy", 	{ "menu_combine" } )

AddPlayerModel("L&G Gunslinger", "models/jessev92/leadandgold/characters/gunslinger_ply.mdl" )
AddPlayerHands( "L&G Gunslinger", "models/jessev92/leadandgold/weapons/arms_gunslinger.mdl", 0, "00000000" )
list.Set( "PlayerOptionsAnimations", "L&G Gunslinger", 	{ "menu_combine" } )

AddPlayerModel("L&G Trapper", "models/jessev92/leadandgold/characters/trapper_ply.mdl" )
AddPlayerHands( "L&G Trapper", "models/jessev92/leadandgold/weapons/arms_trapper.mdl", 0, "00000000" )
list.Set( "PlayerOptionsAnimations", "L&G Trapper", 	{ "menu_combine" } )
-------------------------------------------------------
-------------------------------------------------------
local Category = "NPCG - Lead and Gold"
-------------------------------------------------------
-------------------------------------------------------

local GangRF			= {	Name = "Red Gang",						Class = "npcg_lagr_f",					Category = Category	}		list.Set( "NPC", "npcg_lagr_f", 	GangRF )
local GangRE			= {	Name = "Red Gang: Enemy",				Class = "npcg_lagr_e",					Category = Category	}		list.Set( "NPC", "npcg_lagr_e", 	GangRE )

local GangBF			= {	Name = "Blue Gang",						Class = "npcg_lagb_f",					Category = Category	}		list.Set( "NPC", "npcg_lagb_f", 	GangBF )
local GangBE			= {	Name = "Blue Gang: Enemy",				Class = "npcg_lagb_e",					Category = Category	}		list.Set( "NPC", "npcg_lagb_e", 	GangBE )

local BlasterRF			= {	Name = "Red Blaster",					Class = "npc_lag_blasterr_f",			Category = Category	}		list.Set( "NPC", "npc_lag_blasterr_f", 	BlasterRF )
local BlasterRE			= {	Name = "Red Blaster: Enemy",			Class = "npc_lag_blasterr_e",			Category = Category	}		list.Set( "NPC", "npc_lag_blasterr_e", 	BlasterRE )
local BlasterBF			= {	Name = "Blue Blaster",					Class = "npc_lag_blasterb_f",			Category = Category	}		list.Set( "NPC", "npc_lag_blasterb_f", 	BlasterBF )
local BlasterBE			= {	Name = "Blue Blaster: Enemy",			Class = "npc_lag_blasterb_e",			Category = Category	}		list.Set( "NPC", "npc_lag_blasterb_e", 	BlasterBE )

local DeputyRF			= {	Name = "Red Deputy",					Class = "npc_lag_deputyr_f",			Category = Category	}		list.Set( "NPC", "npc_lag_deputyr_f", 	DeputyRF )
local DeputyRE			= {	Name = "Red Deputy: Enemy",				Class = "npc_lag_deputyr_e",			Category = Category	}		list.Set( "NPC", "npc_lag_deputyr_e", 	DeputyRE )
local DeputyBF			= {	Name = "Blue Deputy",					Class = "npc_lag_deputyb_f",			Category = Category	}		list.Set( "NPC", "npc_lag_deputyb_f", 	DeputyBF )
local DeputyBE			= {	Name = "Blue Deputy: Enemy",			Class = "npc_lag_deputyb_e",			Category = Category	}		list.Set( "NPC", "npc_lag_deputyb_e", 	DeputyBE )

local GunslingerRF		= {	Name = "Red Gunslinger",				Class = "npc_lag_Gunslingerr_f",		Category = Category	}		list.Set( "NPC", "npc_lag_Gunslingerr_f", 	GunslingerRF )
local GunslingerRE		= {	Name = "Red Gunslinger: Enemy",			Class = "npc_lag_Gunslingerr_e",		Category = Category	}		list.Set( "NPC", "npc_lag_Gunslingerr_e", 	GunslingerRE )
local GunslingerBF		= {	Name = "Blue Gunslinger",				Class = "npc_lag_Gunslingerb_f",		Category = Category	}		list.Set( "NPC", "npc_lag_Gunslingerb_f", 	GunslingerBF )
local GunslingerBE		= {	Name = "Blue Gunslinger: Enemy",		Class = "npc_lag_Gunslingerb_e",		Category = Category	}		list.Set( "NPC", "npc_lag_Gunslingerb_e", 	GunslingerBE )

local TrapperRF			= {	Name = "Red Trapper",					Class = "npc_lag_Trapperr_f",			Category = Category	}		list.Set( "NPC", "npc_lag_Trapperr_f", 	TrapperRF )
local TrapperRE			= {	Name = "Red Trapper: Enemy",			Class = "npc_lag_Trapperr_e",			Category = Category	}		list.Set( "NPC", "npc_lag_Trapperr_e", 	TrapperRE )
local TrapperBF			= {	Name = "Blue Trapper",					Class = "npc_lag_Trapperb_f",			Category = Category	}		list.Set( "NPC", "npc_lag_Trapperb_f", 	TrapperBF )
local TrapperBE			= {	Name = "Blue Trapper: Enemy",			Class = "npc_lag_Trapperb_e",			Category = Category	}		list.Set( "NPC", "npc_lag_Trapperb_e", 	TrapperBE )
