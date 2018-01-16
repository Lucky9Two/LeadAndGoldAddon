
$cd weapons

$mostlyopaque

$ModelName jessev92/leadandgold/weapons/repeater_w

$model repeater repeater

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/leadandgold/weapons
$CDMaterials models/jessev92/leadandgold/weapons/repeater

$Attachment		muzzle	muzzle 0 0 0 rotate 0 0 0
$Attachment		eject	eject 0 0 0 rotate 0 0 0

$BoneMerge "ValveBiped.Bip01_R_Hand"

$Sequence idle { repeater fps 1 }

$CollisionModel repeater
{

	$mass 1
	$inertia 10
	$damping 0.01
	$rotdamping 1.5

}
