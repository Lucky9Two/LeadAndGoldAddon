
$cd gunslinger
$mostlyopaque
$ModelName	humans/male/group03/female_02

$Model	Gunslinger	gunslinger	{

	flexfile "gunslinger.vta" 
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
	studio	gunslinger_hat
	blank
}

$BodyGroup "Revolver"
{
	blank
	studio "gunslinger_revolver.smd"
}

$SurfaceProp "flesh"

$Contents "solid"

$EyePosition 0 0 70

$MaxEyeDeflection 90

$MostlyOpaque

$CDMaterials	models/jessev92/leadandgold/characters
$CDMaterials	models/jessev92/leadandgold/characters/common
$CDMaterials	models/jessev92/leadandgold/weapons
$CDMaterials	models/jessev92/leadandgold/common
$CDMaterials	models/jessev92/detail

$TextureGroup "skinfamilies"
{
	{	"GUNSLINGER.vmt"		}
	{	"GUNSLINGER_BLUE.vmt"	}
	{	"GUNSLINGER_RED.vmt"	}
}

$Attachment "eyes" "ValveBiped.Bip01_Head1" 3.67 -4.32 0 rotate 0 -80.1 -90
$Attachment "mouth" "ValveBiped.Bip01_Head1" 1 -6.5 0 rotate 0 -80 -90
$Attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$Attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$Attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$Attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$CBox 0 0 0 0 0 0

$BBox -9.374 -24.766 -2.684 9.374 24.772 74.818

// $HBoxSet "default"
// $HBox 1 "ValveBiped.Bip01_Head1" -1.25 -6.5 -3.19 8.25 3.5 3.31
// $HBox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25
// $HBox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62
// $HBox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5
// $HBox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75
// $HBox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45
// $HBox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5
// $HBox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25
// $HBox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72
// $HBox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16
// $HBox 6 "ValveBiped.Bip01_L_Toe0" -0.5 -3 -2.19 2.5 0 2.46
// $HBox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25
// $HBox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18
// $HBox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72
// $HBox 7 "ValveBiped.Bip01_R_Toe0" -0.5 -3 -2.6 2.5 0 2.1
// $HBox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5
// $HBox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7
// $SkipBoneInBBox

$BoneMerge "ValveBiped.Bip01_Pelvis"
$BoneMerge "ValveBiped.Bip01_Spine"
$BoneMerge "ValveBiped.Bip01_Spine1"
$BoneMerge "ValveBiped.Bip01_Spine2"
$BoneMerge "ValveBiped.Bip01_Spine4"
$BoneMerge "ValveBiped.Bip01_R_Clavicle"
$BoneMerge "ValveBiped.Bip01_R_UpperArm"
$BoneMerge "ValveBiped.Bip01_R_Forearm"
$BoneMerge "ValveBiped.Bip01_R_Hand"
$BoneMerge "ValveBiped.Anim_Attachment_RH"
$BoneMerge "ValveBiped.Bip01_L_Clavicle"
$BoneMerge "ValveBiped.Bip01_L_UpperArm"
$BoneMerge "ValveBiped.Bip01_L_Forearm"
$BoneMerge "ValveBiped.Bip01_L_Hand"
$BoneMerge "ValveBiped.Anim_Attachment_LH"

$ProceduralBones "gunslinger.vrd"

$Sequence "ragdoll" {	"../ragdoll"	activity "ACT_DIERAGDOLL" 1	fps 30	}

//$includemodel	m_anm.mdl
$includemodel	humans/female_shared.mdl
$includemodel	humans/female_ss.mdl
$includemodel	humans/female_gestures.mdl
$includemodel	humans/female_postures.mdl
//$includemodel	combine_soldier_anims.mdl
//$includemodel	police_animations.mdl
//$includemodel	Police_ss.mdl
//$IncludeModel "monk_animations.mdl"
//$IncludeModel "barney_animaations.mdl"
//$IncludeModel "barney_gestures.mdl"
//$IncludeModel "barney_postures.mdl"

$IKChain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$IKChain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$IKChain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$IKChain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$IKAutoPlayLock "rfoot" 1 0.1
$IKAutoPlayLock "lfoot" 1 0.1

$CollisionJoints "gunslinger_physics.smd"
{
	$mass 90
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -55 90 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -140 140 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -90 55 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -140 140 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -55 35 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -65 95 0

	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit -28 19 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit -16 26 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit -10 46 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -115 150 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -140 30 0

	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit -28 19 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit -16 26 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit -10 46 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -150 115 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -140 30 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -70 70 0

	$jointconstrain "ValveBiped.Bip01_Neck1" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Neck1" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Neck1" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -65 40 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -70 70 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -55 35 0
}

$CollisionText
{
	animatedfriction 
	{
		"animfrictionmin" "1.000000"
		"animfrictionmax" "400.000000"
		"animfrictiontimein" "0.500000"
		"animfrictiontimeout" "0.300000"
		"animfrictiontimehold" "0.000000"
	}
	editparams 
	{
		"rootname" "valvebiped.bip01_pelvis"
		"totalmass" "90.000000"
		"jointmerge" "valvebiped.bip01_pelvis,valvebiped.bip01"
		"jointmerge" "valvebiped.bip01_pelvis,valvebiped.bip01_spine1"
	}
}
