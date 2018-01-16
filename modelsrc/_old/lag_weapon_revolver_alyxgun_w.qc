$cd lag/lag_revolver
$mostlyopaque
$ModelName				weapons/w_alyx_gun
$model	Revolver		revolver_reference
$SurfaceProp			weapon
$Contents				solid
$CDMaterials			models/jessev92/leadandgold/characters
$CDMaterials			models/jessev92/leadandgold/characters/common
$CDMaterials			models/jessev92/leadandgold/weapons
$CDMaterials			models/jessev92/leadandgold/common
$CDMaterials			models/jessev92/detail
$BBox -9.068 -1.34 -3.824 8.58 1.34 3.552
$BoneMerge "ValveBiped.Bip01_R_Hand"
$Sequence 	idle		{	revolver_reference fps 1	}
$CollisionModel			revolver_physics
{
	$mass 10
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
}
