
------------------------------------------------------
--	Lead & Gold: Gangs of the Wild West
--	'Revolver'
--	.45 Colt Single Action Revolver
------------------------------------------------------

AddCSLuaFile( )

SWEP.PrintName = "Peacemaker" -- (String) Printed name on menu

if not VNTCB then

	Error( "V92 Content Bases not mounted; Removing Weapon: " .. SWEP.PrintName .. "\n" )
	return false
	
end

SWEP.Base = VNT_BASE_WEAPON -- (String) Weapon base parent this is a child of
SWEP.Spawnable = false -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = true -- (Boolean) Admin only spawnable

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.WeaponName = "v92_lag_revolver" -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.WeaponName .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.Manufacturer = VNT_WEAPON_MANUFACTURER_COLT -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNT_WEAPON_COUNTRY_UNITEDSTATES -- (String) Country of origin
SWEP.MagazineName = VNTCB.Magazine.m45Colt -- (String) The name of the magazine the weapon uses - used in my Weapon Magazine System
SWEP.Category = VNT_CATEGORY_LEADANDGOLD -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = VNT_WEAPON_BUCKETPOS_REVOLVER -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = VNT_WEAPON_SLOTPOS_REVOLVER -- (Integer) Bucket position
SWEP.ViewModelFOV = 72 -- (Integer) First-person field of view
SWEP.WorkshopID = "716463581" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--
------------------------------------------------------

SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model( "models/weapons/c_357.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model("models/jessev92/leadandgold/weapons/revolver_w.mdl") -- (String) World model - w_*
SWEP.HoldType = "pistol" -- (String) Hold type for our weapon, refer to wiki for animation sets
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms

------------------------------------------------------
--	Gun Types										--	Set the type of weapon - ONLY PICK ONE!
------------------------------------------------------

------------------------------------------------------
--	Primary Fire Settings							--	Settings for the primary fire of the weapon
------------------------------------------------------

SWEP.Primary.ClipSize = 6 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 6 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "45colt" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Primary.PureDmg = VNTCB.Ammo.a45Colt[ 1 ] -- (Integer) Base damage, put one number here and the base will do the rest
SWEP.Primary.RPM = 65 -- (Integer) Go to a wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.CanChamber = false -- (Boolean) Can we load a round into the chamber?

------------------------------------------------------
--	Gun Mechanics									--	Various things to tweak the effects and feedback
------------------------------------------------------

SWEP.FireMode = { false , true , false , false } -- (Table: Boolean, Boolean, Boolean, Boolean ) Enable different fire modes on the weapon; Has modes, Has Single, Has Burst, Has Auto - in that order. You can have more than one, but the first must be true
SWEP.CurrentMode = 1 -- (Integer) Current fire mode of the weapon; used to set the default mode; corresponds to the FireMode table
SWEP.Weight = 1 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
SWEP.CanFireUnderwater = true -- (Boolean) Can we shoot underwater?
SWEP.StrongPenetration = VNTCB.Ammo.a45Colt[ 2 ] -- (Integer) Max penetration
SWEP.WeakPenetration = VNTCB.Ammo.a45Colt[ 3 ] -- (Integer) Max wood penetration
SWEP.EffectiveRange = 50 -- (Integer) Effective range of the weapon in metres.
SWEP.RevolverAction = 1  -- (Integer) Revolver action style, 0=disregard, 1=Single-Action, 2=Double-Action
SWEP.StoppageRate = 0 -- (Integer) Rate of stoppages in the weapon, look up the real world number estimations and just throw that in here.

------------------------------------------------------
--	Special FX										--	Muzzle flashes, shell casings, etc
------------------------------------------------------

SWEP.MuzzleAttach = 1 -- (Integer) The number of the attachment point for muzzle flashes, typically "1"
SWEP.MuzzleFlashType = 4 -- (Integer) The number of the muzzle flash to use; see Lua/Effects/fx_muzzleflash.Lua
SWEP.ShellAttach = 2 -- (Integer) The number of the attachment point for shell ejections, typically "2"
SWEP.ShellType = 3 -- (Integer) The shell to use, see Lua/Effects/FX_ShellEject for integers
SWEP.ShellDelay = 0.5 -- (Float) Time between shot firing and shell ejection; useful for bolt-actions and things like that that need a delay
SWEP.RevolverShells = 6 -- (Table: Integer) Set to any integer to enable 'revolver' style shell ejections; I.E. when you reload it dumps all of them at once. Integer should be shell count.

------------------------------------------------------
--	Custom Sounds									--	Setup sounds here!
------------------------------------------------------

SWEP.Sounds = {
	["Primary"] = Sound( "Weapon_357.Single" ),
	["PrimaryDry"] = Sound("Weapon_Pistol.Empty"),
	["Reload"] = Sound( "Weapon_357.Reload" ),

	["Noise_Close"] = Sound( "BF3.BulletCraft.Noise.Forest.Close" ) ,
	["Noise_Distant"] = Sound( "BF3.BulletCraft.Noise.Forest.Distant" ) ,
	["Noise_Far"] = Sound( "BF3.BulletCraft.Noise.Forest.Far" ) ,
	["CoreBass_Close"] = Sound( "BF3.BulletCraft.CoreBass.Close.OneShot_3" ),
	["CoreBass_Distant"] = Sound( "BF3.BulletCraft.CoreBass.Distant.OneShot_1" ),
	["HiFi"] = Sound( "BF3.BulletCraft.HiFi.Pistol_2" ),
	["Reflection_Close"] = Sound( "BF3.BulletCraft.Reflection.Forest.Close" ) ,
	["Reflection_Far"] = Sound( "BF3.BulletCraft.Reflection.Forest.Far" ) ,
}

SWEP.SelectorSwitchSNDType = 1 -- (Integer) 1=US , 2=RU
SWEP.UsesSuperSonicAmmo = true -- (Boolean) Is the weapon using supersonic or subsonic ammo?

------------------------------------------------------
--	Ironsight & Run Positions						--	Set our model transforms for running and ironsights
------------------------------------------------------

SWEP.IronSightsPos = Vector(-4.651, -10, 0.699)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunArmOffset = Vector(0, -17, -10)
SWEP.RunArmAngle = Vector(70, 0, 0)

------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
------------------------------------------------------

if CLIENT then
	SWEP.CSMuzzleFlashes = true
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
elseif SERVER then
	resource.AddWorkshop( SWEP.WorkshopID )
end

------------------------------------------------------
--	SWEP:Initialize() 								--	Called when the weapon is first loaded
------------------------------------------------------

function SWEP:Initialize( )
	self.HoldMeRight = VNTCB.HoldType.Revolver -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua
	--self:SetHoldType(self.HoldType)
end

------------------------------------------------------
-- Sequence Settings
------------------------------------------------------

SWEP.SeqIdle = { "idle01" }

SWEP.SeqPrimary = { "fire" }

SWEP.SeqReload = { "reload" }
SWEP.SeqReloadStart = { "reload_start" }
SWEP.SeqReloadLoop = { "reload_loop" }
SWEP.SeqReloadEnd = { "reload_end" }

SWEP.SeqDraw = { "draw" }

SWEP.SeqIdleToLow = { "idletolow" }
SWEP.SeqLowIdle = { "lowidle" }
SWEP.SeqLowToIdle = { "lowtoidle" }
