
$mostlyopaque

$ModelName jessev92/leadandgold/items/hats/trapper_jb
$model Coonskin trapper/trapper_hat_red

$SurfaceProp carpet

$Contents solid

$CDMaterials models/jessev92/leadandgold/items/hats/trapper
$CDMaterials models/jessev92/leadandgold/characters/trapper

$TextureGroup skinfamilies
{
	{	"trapper_red_hat"			}
	{	"trapper_blue_hat"			}
}

$jigglebone "hat_jiggle1" {
	is_flexible
	{
		length 5
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 5
		yaw_stiffness 50
		yaw_damping 5
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -30.000001 10
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}

$jigglebone "hat_jiggle2" {
	is_flexible
	{
		length 5
		tip_mass 0
		pitch_stiffness 40
		pitch_damping 5
		yaw_stiffness 40
		yaw_damping 5
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -30.000001 10
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}

$BoneMerge "ValveBiped.Bip01_Head"

$Sequence idle { trapper/trapper_hat_red fps 1 }

$CollisionModel trapper/trapper_hat_red
{
	$mass 1
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
}
