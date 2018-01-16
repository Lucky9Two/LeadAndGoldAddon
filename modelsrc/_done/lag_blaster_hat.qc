
$mostlyopaque

$ModelName jessev92/leadandgold/items/hats/blaster
$model Mining blaster/blaster_helmet_proxy

$SurfaceProp carpet

$Contents solid

$CDMaterials models/jessev92/leadandgold/items/hats/blaster
$CDMaterials models/jessev92/leadandgold/characters/blaster

$TextureGroup skinfamilies
{
	{ "blaster_proxy_helmet" }
	{ "blaster_blue_helmet" }
	{ "blaster_red_helmet" }
}

$BoneMerge "ValveBiped.Bip01_Head"

$Sequence idle { blaster/blaster_helmet_proxy fps 1 }

$CollisionModel blaster/blaster_helmet_proxy
{
	$mass 1
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
}
