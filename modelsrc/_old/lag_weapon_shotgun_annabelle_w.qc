$cd lag/lag_shotgun
$mostlyopaque
$ModelName				weapons/w_annabelle
$model	Shotgun			shotgun_w
$SurfaceProp			weapon
$Contents				solid
$CDMaterials			models/jessev92/leadandgold/characters
$CDMaterials			models/jessev92/leadandgold/characters/common
$CDMaterials			models/jessev92/leadandgold/weapons
$CDMaterials			models/jessev92/leadandgold/common
$CDMaterials			models/jessev92/detail
$BBox -19.109 -1.545 -5.74 19.098 1.52 3.123
$BoneMerge "ValveBiped.Bip01_R_Hand"

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0

$Sequence "idle1" {
	"w_annabelle_anim_idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "fire" {
	"w_annabelle_anim_fire.smd"
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SHOTGUN 0" }
	{ event 6001 0 "2" }
	{ event 3004 0 "" }
	fadein 0.2
	fadeout 0.2
	{ event AE_CL_PLAYSOUND 0 "Weapon_Shotgun.Single" }
	fps 5
}

$Sequence "draw" {
	"w_annabelle_anim_draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "holster" {
	"w_annabelle_anim_holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel			shotgun_w
{
	$mass 10
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
}
