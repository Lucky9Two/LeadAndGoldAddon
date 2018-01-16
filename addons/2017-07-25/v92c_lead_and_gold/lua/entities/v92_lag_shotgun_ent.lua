
AddCSLuaFile( )

if not VNTCB then return false end

ENT.Base = VNT_BASE_WEAPON_ENTITY
ENT.Type = "anim"

ENT.PrintName = "Double Barrel"
ENT.Information = "Uses 20-Gauge Ammo"
ENT.Author = VNTCB.Info.author
ENT.Information = VNTCB.Info.instructions
ENT.Purpose = VNTCB.Info.purpose
ENT.Category = VNT_CATEGORY_LEADANDGOLD

ENT.Spawnable = false
ENT.AdminOnly = true

ENT.SWepName = "v92_lag_shotgun" -- (String) Name of the weapon entity in Lua/weapons/swep_name.lua
ENT.WeaponName = ENT.SWepName .. "_ent" -- (String) Name of this entity
ENT.SEntModel = Model( "models/jessev92/leadandgold/weapons/shotgun_w.mdl" ) -- (String) Model to use