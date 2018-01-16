
$ModelName	jessev92/leadandgold/characters/gunslinger_ply

$Model	Gunslinger	gunslinger/gunslinger	{

	flexfile "gunslinger/gunslinger.vta" 
	{
		defaultflex frame 0
		flex "eyes_up" frame 1
		flex "eyes_down" frame 2
		flex "eyes_left" frame 3
		flex "eyes_right" frame 4
		flexpair "eyelid_up" 1 frame 5
		flexpair "eyelid_down" 1 frame 6
		flexpair "brow_up" 1 frame 7
		flexpair "brow_down" 1 frame 8
	}

	flexcontroller eyes range 0 1 eyes_up
	flexcontroller eyes range 0 1 eyes_down
	flexcontroller eyes range 0 1 eyes_left
	flexcontroller eyes range 0 1 eyes_right
	flexcontroller eyelid range 0 1 right_eyelid_up
	flexcontroller eyelid range 0 1 left_eyelid_up
	flexcontroller eyelid range 0 1 right_eyelid_down
	flexcontroller eyelid range 0 1 left_eyelid_down
	flexcontroller brow range 0 1 right_brow_up
	flexcontroller brow range 0 1 left_brow_up
	flexcontroller brow range 0 1 right_brow_down
	flexcontroller brow range 0 1 left_brow_down
	flexcontroller mouth range 0 1 right_mouth_smile
	flexcontroller mouth range 0 1 left_mouth_smile
	flexcontroller mouth range 0 1 right_mouth_frown
	flexcontroller mouth range 0 1 left_mouth_frown
	flexcontroller mouth range 0 1 right_mouth_openlips
	flexcontroller mouth range 0 1 left_mouth_openlips
	flexcontroller mouth range 0 1 mouth_openjaw
	flexcontroller dummyflex range 0 1 dummyflex

	localvar mouth_smileR
	localvar mouth_smileL
	localvar mouth_frownR
	localvar mouth_frownL
	localvar mouth_openlipsR
	localvar mouth_openlipsL
	localvar mouth_openjaw
	localvar dummyflex
	%eyes_up = eyes_up
	%eyes_down = eyes_down
	%eyes_left = eyes_left
	%eyes_right = eyes_right
	%eyelid_upL = left_eyelid_up
	%eyelid_upR = right_eyelid_up
	%eyelid_downL = left_eyelid_down
	%eyelid_downR = right_eyelid_down
	%brow_upL = left_brow_up
	%brow_upR = right_brow_up
	%brow_downL = left_brow_down
	%brow_downR = right_brow_down
	%mouth_smileL = left_mouth_smile
	%mouth_smileR = right_mouth_smile
	%mouth_frownL = left_mouth_frown
	%mouth_frownR = right_mouth_frown
	%mouth_openlipsL = left_mouth_openlips
	%mouth_openlipsR = right_mouth_openlips
	%mouth_openjaw = mouth_openjaw
	%dummyflex = dummyflex
}

$bodygroup	Hat
{
	studio	gunslinger/gunslinger_hat_red
	studio	gunslinger/gunslinger_hat_blue
	blank
}

$BodyGroup Revolver
{
	blank
	studio gunslinger/gunslinger_revolver
}

$SurfaceProp flesh

$CDMaterials	models/jessev92/leadandgold/characters
$CDMaterials	models/jessev92/leadandgold/characters/common
$CDMaterials	models/jessev92/leadandgold/weapons
$CDMaterials	models/jessev92/leadandgold/common
$CDMaterials	models/jessev92/detail

$TextureGroup skinfamilies
{
	{ "gunslinger_proxy_red" , "gunslinger_alpha_red"	}
	{ "gunslinger_proxy_blue" , "gunslinger_alpha_blue" }
	{ "gunslinger_red" , "gunslinger_alpha_red" }
	{ "gunslinger_blue" , "gunslinger_alpha_blue" }
}

$includemodel	m_anm.mdl
//$includemodel	humans/male_shared.mdl
//$includemodel	humans/male_ss.mdl
//$includemodel	humans/male_gestures.mdl
//$includemodel	humans/male_postures.mdl
//$includemodel	combine_soldier_anims.mdl
//$includemodel	police_animations.mdl
//$includemodel	Police_ss.mdl
//$IncludeModel "monk_animations.mdl"
//$IncludeModel "barney_animaations.mdl"
//$IncludeModel "barney_gestures.mdl"
//$IncludeModel "barney_postures.mdl"

// $pushd "..\..\..\common"
$include "Humans\Male\ragdoll.qci"
$include "Humans\Male\hitbox.qci"
$include "Humans/standardhierarchy.qci"
$include "humans/standardikchains.qci"
$include "humans/male/commonbones.qci"
$proceduralbones "humans/male.vrd"
// $popd

$include "optimization.qci"
