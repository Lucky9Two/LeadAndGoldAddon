
$mostlyopaque

$ModelName jessev92/leadandgold/items/hats/gunslinger

$model Sunhat gunslinger/gunslinger_hat_red

$SurfaceProp carpet

$Contents solid

$CDMaterials models/jessev92/leadandgold/items/hats/gunslinger
$CDMaterials models/jessev92/leadandgold/characters/gunslinger

$TextureGroup skinfamilies
{

	{ "gunslinger_red_hat" }
	{ "gunslinger_blue_hat" }

}

$BoneMerge "ValveBiped.Bip01_Head"

$Sequence idle { gunslinger/gunslinger_hat_red fps 1 }

$CollisionModel gunslinger/gunslinger_hat_red
{

	$mass 1
	$inertia 10
	$damping 0.01
	$rotdamping 1.5

}
