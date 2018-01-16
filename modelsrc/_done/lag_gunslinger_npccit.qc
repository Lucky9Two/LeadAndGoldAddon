
$ModelName	jessev92/leadandgold/characters/gunslinger/npc_citizen

$include "lag_gunslinger_common.qci"

// $includemodel m_anm.mdl
$includemodel humans/male_shared.mdl
$includemodel humans/male_ss.mdl
$includemodel humans/male_gestures.mdl
$includemodel humans/male_postures.mdl
// $includemodel combine_soldier_anims.mdl
// $includemodel police_animations.mdl
// $includemodel Police_ss.mdl
// $IncludeModel monk_animations.mdl
// $IncludeModel barney_animaations.mdl
// $IncludeModel barney_gestures.mdl
// $IncludeModel barney_postures.mdl

// $pushd "..\..\..\common"
$include "Humans/male/ragdoll.qci"
$include "Humans/male/hitbox.qci"
$include "Humans/standardhierarchy.qci"
$include "humans/standardikchains.qci"
$include "humans/male/commonbones.qci"
$proceduralbones "humans/male.vrd"
// $popd

$include "optimization.qci"
