
AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"

ENT.PrintName = "Blue Gunslinger Friendly"
ENT.Author = VNTCB.Info.author
ENT.Information = VNTCB.Info.instructions
ENT.Purpose = VNTCB.Info.purpose
ENT.Category = VNT_CATEGORY_LEADANDGOLD
ENT.Spawnable = false
ENT.AdminOnly = false

local weaponGunslinger = { "v92_lag_revolver" }

if SERVER then
	function ENT:Initialize()
		if ConVarExists("npcg_ignorepushing") and GetConVarNumber("npcg_ignorepushing") != 0 then	self.pushNum = 16384	else	self.pushNum = 0	end
		if ConVarExists("npcg_fade_corpse") and GetConVarNumber("npcg_fade_corpse") != 0 then	self.fadeNum = 512	else	self.fadeNum = 0	end
		if ConVarExists("npcg_longvision") and GetConVarNumber("npcg_longvision") != 0 then	self.longNum = 256	else	self.longNum = 0	end
		self.kvNum = 0
		
		self.ent1 = ents.Create("npc_citizen")
		self.ent1:SetPos(self:GetPos())
		self.ent1:SetAngles( Angle( 0, math.random( 0, 360 ), 0 ) )
		self.ent1:SetKeyValue( "citizentype", 4)
		self.ent1:SetModel("models/jessev92/leadandgold/characters/gunslinger/npc_citizen.mdl" )
		self.ent1:SetSkin( 3 )
		self.ent1:SetBodygroup( 1 , 1 )
		self.ent1:SetBodygroup( 2 , 0 )
		self.ent1:SetKeyValue( "DontPickupWeapons", "1" )
		self.ent1:SetKeyValue( "additionalequipment", table.Random( weaponGunslinger ) )
		self.ent1:SetKeyValue( "spawnflags", tostring( self.kvNum + self.longNum + self.pushNum + self.fadeNum ) )
		self.ent1:SetKeyValue( "wakeradius", GetConVarNumber( "npcg_wakeradius_human" ) )
		self.ent1:Spawn()
		self.ent1:Activate()
		self.ent1:SetSchedule( SCHED_IDLE_WANDER )
		
		if GetConVarNumber( "npcg_squad_lag_Gunslinger" ) != 0	then		self.ent1:SetKeyValue( "SquadName", "LeadGoldRebSquad" )	end
		if GetConVarNumber( "npcg_squad_wakeupall" ) != 0	then		self.ent1:SetKeyValue( "wakesquad", 1 )	end

		if	GetConVarNumber("npcg_accuracy_lag_Gunslinger") >= 4	then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_PERFECT)
		elseif	GetConVarNumber("npcg_accuracy_lag_Gunslinger") == 3	then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_VERY_GOOD)
		elseif	GetConVarNumber("npcg_accuracy_lag_Gunslinger") == 2	then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_GOOD)
		elseif	GetConVarNumber("npcg_accuracy_lag_Gunslinger") == 1	then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_AVERAGE)
		else
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR)
		end

		timer.Simple(0, function()
		undo.Create( self.PrintName )
			undo.AddEntity(self.ent1)
			undo.SetCustomUndoText("Undone " .. self.PrintName )
			undo.SetPlayer(self.Owner)
		undo.Finish()
		self:Remove()
		end)
	end
end