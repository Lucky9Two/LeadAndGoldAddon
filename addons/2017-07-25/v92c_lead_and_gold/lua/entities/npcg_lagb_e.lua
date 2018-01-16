
AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"

ENT.PrintName = "Blue Gang Enemy"
ENT.Author = VNTCB.Info.author
ENT.Information = VNTCB.Info.instructions
ENT.Purpose = VNTCB.Info.purpose
ENT.Category = VNT_CATEGORY_LEADANDGOLD
ENT.Spawnable = false
ENT.AdminOnly = false

local weaponBlaster = { "v92_lag_shotgun" }
local weaponDeputy = { "v92_lag_repeater" }
local weaponGunslinger = { "v92_lag_revolver" }
local weaponTrapper = { "v92_lag_sniper" }

function ENT:Initialize()

	if ConVarExists("npcg_cmbelite_ar2altdrop") and GetConVarNumber("npcg_cmbelite_ar2altdrop") != 0 then	self.ar2AltDrop = 393732	else	self.ar2AltDrop = 0	end
	if ConVarExists("npcg_ignorepushing") and GetConVarNumber("npcg_ignorepushing") != 0 then	self.pushNum = 16384	else	self.pushNum = 0	end
	if ConVarExists("npcg_fade_corpse") and GetConVarNumber("npcg_fade_corpse") != 0 then	self.fadeNum = 512	else	self.fadeNum = 0	end
	if ConVarExists("npcg_longvision") and GetConVarNumber("npcg_longvision") != 0 then	self.longNum = 256	else	self.longNum = 0	end
	
	self.kvNum = 0
	
	self.ent1 = ents.Create("npc_combine_s")
	self.ent1:SetPos(self:GetPos())
	self.ent1:SetAngles( Angle( 0, math.random( 0, 360 ), 0 ) )
	self.ent1:SetModel("models/jessev92/leadandgold/characters/blaster/npc_combine.mdl" )
	self.ent1:SetSkin( 3 )
	self.ent1:SetBodygroup( 1 , 2 )
	self.ent1:SetBodygroup( 4 , 1 )
	self.ent1:SetKeyValue( "DontPickupWeapons", "1" )
	self.ent1:SetKeyValue( "additionalequipment", table.Random( weaponBlaster ) )
	self.ent1:SetKeyValue( "NumGrenades", GetConVarNumber("npcg_grenadecount") )
	self.ent1:SetKeyValue( "spawnflags", tostring( self.kvNum + self.longNum + self.pushNum + self.fadeNum + self.ar2AltDrop ) )
	self.ent1:SetKeyValue( "wakeradius", GetConVarNumber( "npcg_wakeradius_lag_blaster" ) )
	self.ent1:Spawn()
	self.ent1:Activate()
	--self.ent1:SetSchedule( SCHED_INVESTIGATE_SOUND )
	self.ent1:SetSchedule( SCHED_IDLE_WANDER )

	self.ent2 = ents.Create("npc_combine_s")
	self.ent2:SetPos(self:GetPos() + self:GetRight() * 50 + self:GetForward() * 50)
	self.ent2:SetAngles( Angle( 0, math.random( 0, 360 ), 0 ) )
	self.ent2:SetModel("models/jessev92/leadandgold/characters/deputy/npc_combine.mdl" )
	self.ent2:SetSkin( 2 )
	self.ent2:SetBodygroup( 1 , 2 )
	self.ent2:SetBodygroup( 2 , 2 )
	self.ent2:SetBodygroup( 4 , 1 )
	self.ent2:SetKeyValue( "DontPickupWeapons", "1" )
	self.ent2:SetKeyValue( "additionalequipment", table.Random( weaponDeputy ) )
	self.ent2:SetKeyValue( "NumGrenades", 0 )
	self.ent2:SetKeyValue( "spawnflags", tostring( self.kvNum + self.longNum + self.pushNum + self.fadeNum ) )
	self.ent2:SetKeyValue( "wakeradius", GetConVarNumber( "npcg_wakeradius_lag_deputy" ) )
	self.ent2:Spawn()
	self.ent2:Activate()
	--self.ent2:SetSchedule( SCHED_INVESTIGATE_SOUND )
	self.ent2:SetSchedule( SCHED_IDLE_WANDER )

	self.ent3 = ents.Create("npc_combine_s")
	self.ent3:SetPos(self:GetPos() + self:GetRight() * -50 + self:GetForward() * -50)
	self.ent3:SetAngles( Angle( 0, math.random( 0, 360 ), 0 ) )
	self.ent3:SetModel("models/jessev92/leadandgold/characters/gunslinger/npc_combine.mdl" )
	self.ent3:SetSkin( 3 )
	self.ent3:SetBodygroup( 1 , 1 )
	self.ent3:SetBodygroup( 2 , 0 )
	self.ent3:SetKeyValue( "DontPickupWeapons", "1" )
	self.ent3:SetKeyValue( "additionalequipment", table.Random( weaponGunslinger ) )
	self.ent3:SetKeyValue( "spawnflags", tostring( self.kvNum + self.longNum + self.pushNum + self.fadeNum ) )
	self.ent3:SetKeyValue( "wakeradius", GetConVarNumber( "npcg_wakeradius_lag_gunslinger" ) )
	self.ent3:Spawn()
	self.ent3:Activate()
	--self.ent3:SetSchedule( SCHED_INVESTIGATE_SOUND )
	self.ent3:SetSchedule( SCHED_IDLE_WANDER )

	self.ent4 = ents.Create("npc_combine_s")
	self.ent4:SetPos(self:GetPos() + self:GetForward() * -50 + self:GetRight() * 50)
	self.ent4:SetAngles( Angle( 0, math.random( 0, 360 ), 0 ) )
	self.ent4:SetModel("models/jessev92/leadandgold/characters/trapper/npc_combine.mdl" )
	self.ent4:SetSkin( 3 )
	self.ent4:SetBodygroup( 1 , 1 )
	self.ent4:SetBodygroup( 3 , 0 )
	self.ent4:SetKeyValue( "DontPickupWeapons", "1" )
	self.ent4:SetKeyValue( "additionalequipment", table.Random( weaponTrapper ) )
	self.ent4:SetKeyValue( "NumGrenades", 0 )
	self.ent4:SetKeyValue( "spawnflags", tostring( self.kvNum + self.longNum + self.pushNum + self.fadeNum + self.ar2AltDrop ) )
	self.ent4:SetKeyValue( "wakeradius", GetConVarNumber( "npcg_wakeradius_lag_trapper" ) )
	self.ent4:Spawn()
	self.ent4:Activate()
	self.ent4:SetSchedule( SCHED_IDLE_WANDER )

	if GetConVarNumber( "npcg_squad_lag_blaster" ) != 0	then		self.ent1:SetKeyValue( "SquadName", "LeadGoldCmbSquad" )	end
	if GetConVarNumber( "npcg_squad_lag_deputy" ) != 0	then		self.ent2:SetKeyValue( "SquadName", "LeadGoldCmbSquad" )	end
	if GetConVarNumber( "npcg_squad_lag_gunslinger" ) != 0	then	self.ent3:SetKeyValue( "SquadName", "LeadGoldCmbSquad" )	end
	if GetConVarNumber( "npcg_squad_lag_trapper" ) != 0	then		self.ent4:SetKeyValue( "SquadName", "LeadGoldCmbSquad" )	end
	
	if GetConVarNumber( "npcg_squad_wakeupall" ) != 0	then	
		self.ent1:SetKeyValue( "wakesquad", 1 )	
		self.ent2:SetKeyValue( "wakesquad", 1 )	
		self.ent3:SetKeyValue( "wakesquad", 1 )	
		self.ent4:SetKeyValue( "wakesquad", 1 )	
	end

	if	GetConVarNumber("npcg_combine_tacticalvar") > 1	then
		self.ent1:SetKeyValue( "tacticalvariant", 2 )
		self.ent2:SetKeyValue( "tacticalvariant", 2 )
		self.ent3:SetKeyValue( "tacticalvariant", 2 )
		self.ent4:SetKeyValue( "tacticalvariant", 2 )
	elseif	GetConVarNumber("npcg_combine_tacticalvar") != 0	then
		self.ent1:SetKeyValue( "tacticalvariant", 1 )
		self.ent2:SetKeyValue( "tacticalvariant", 1 )
		self.ent3:SetKeyValue( "tacticalvariant", 1 )	
		self.ent4:SetKeyValue( "tacticalvariant", 1 )	
	else
		self.ent1:SetKeyValue( "tacticalvariant", 0 )
		self.ent2:SetKeyValue( "tacticalvariant", 0 )
		self.ent3:SetKeyValue( "tacticalvariant", 0 )
		self.ent4:SetKeyValue( "tacticalvariant", 0 )
	end
	
	if	GetConVarNumber("npcg_accuracy_lag_blaster") >= 4	then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_PERFECT)
	elseif	GetConVarNumber("npcg_accuracy_lag_blaster") == 3	then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_VERY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_blaster") == 2	then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_blaster") == 1	then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_AVERAGE)
	else
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR)
	end

	if	GetConVarNumber("npcg_accuracy_lag_deputy") >= 4	then
		self.ent2:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_PERFECT)
	elseif	GetConVarNumber("npcg_accuracy_lag_deputy") == 3	then
		self.ent2:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_VERY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_deputy") == 2	then
		self.ent2:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_deputy") == 1	then
		self.ent2:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_AVERAGE)
	else
		self.ent2:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR)
	end

	if	GetConVarNumber("npcg_accuracy_lag_gunslinger") >= 4	then
		self.ent3:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_PERFECT)
	elseif	GetConVarNumber("npcg_accuracy_lag_gunslinger") == 3	then
		self.ent3:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_VERY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_gunslinger") == 2	then
		self.ent3:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_gunslinger") == 1	then
		self.ent3:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_AVERAGE)
	else
		self.ent3:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR)
	end

	if	GetConVarNumber("npcg_accuracy_lag_trapper") >= 4	then
		self.ent4:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_PERFECT)
	elseif	GetConVarNumber("npcg_accuracy_lag_trapper") == 3	then
		self.ent4:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_VERY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_trapper") == 2	then
		self.ent4:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_GOOD)
	elseif	GetConVarNumber("npcg_accuracy_lag_trapper") == 1	then
		self.ent4:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_AVERAGE)
	else
		self.ent4:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR)	
	end

	timer.Simple(0, function()
	undo.Create( self.PrintName )
		undo.AddEntity(self.ent1)
		undo.AddEntity(self.ent2)
		undo.AddEntity(self.ent3)
		undo.AddEntity(self.ent4)
		undo.SetCustomUndoText( "Undone " .. self.PrintName )
		undo.SetPlayer(self.Owner)
	undo.Finish()
	self:Remove()
	end)

end
