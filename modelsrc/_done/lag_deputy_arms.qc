
$opaque

$modelname jessev92/leadandgold/characters/deputy/arms

$body deputy deputy/deputy_arms

$CDMaterials models/jessev92/leadandgold/characters/deputy/arms

$TextureGroup skinfamilies
{

	{ "deputy_arms" }
	{ "deputy_arms_red" }
	{ "deputy_arms_blue" }
	
}

$include "c_arms/c_arms_definebones.qci"

$surfaceprop flesh

$contents solid

$sequence idle "c_arms/idle" {	fps	1 }

$includemodel weapons/c_arms_animations

$proceduralbones "c_arms_dod.vrd"

$origin 0 0 -66

$ikchain rhand "ValveBiped.Bip01_R_Hand" Z 0 knee 0.707 0.707 0
$ikchain lhand "ValveBiped.Bip01_L_Hand" Z 0 knee 0.707 0.707 0

$weightlist IKLayer "ValveBiped.Bip01_Spine4" 0.5 "ValveBiped.Bip01_Spine4" 0.5

$animation a_idle_layer "c_arms/anim_idle_layer" subtract a_idle_layer 0 ikrule lhand touch "ValveBiped.Bip01_Spine4" usesource

$sequence anim_idle_layer a_idle_layer delta loop fps 30 hidden autoplay realtime weightlist IKlayer
