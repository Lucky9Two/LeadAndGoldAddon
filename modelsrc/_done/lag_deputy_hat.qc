
$mostlyopaque

$ModelName jessev92/leadandgold/items/hats/deputy
$model Bowler deputy/deputy_hat_proxy

$SurfaceProp carpet

$Contents solid

$CDMaterials models/jessev92/leadandgold/items/hats/deputy
$CDMaterials models/jessev92/leadandgold/characters/deputy

$TextureGroup skinfamilies
{
	{ "deputy_proxy_hat" }
	{ "deputy_red_hat" }
	{ "deputy_blue_hat" }
}

$BoneMerge "ValveBiped.Bip01_Head"

$Sequence idle { deputy/deputy_hat_proxy fps 1 }

$CollisionModel deputy/deputy_hat_proxy
{
	$mass 1
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
}
