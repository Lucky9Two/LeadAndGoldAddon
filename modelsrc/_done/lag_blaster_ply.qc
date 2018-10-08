
$modelname	jessev92/leadandgold/characters/blaster/player

$include "lag_blaster_common.qci"

$includemodel m_anm.mdl
// $includemodel humans/male_shared.mdl
// $includemodel humans/male_ss.mdl
// $includemodel humans/male_gestures.mdl
// $includemodel humans/male_postures.mdl
// $includemodel combine_soldier_anims.mdl
// $includemodel police_animations.mdl
// $includemodel police_ss.mdl
// $includemodel monk_animations.mdl
// $includemodel barney_animaations.mdl
// $includemodel barney_gestures.mdl
// $includemodel barney_postures.mdl

// $pushd "..\..\..\common"
$include "humans/male/ragdoll.qci"
$include "humans/male/hitbox.qci"
$include "humans/standardhierarchy.qci"
$include "humans/standardikchains.qci"
$include "humans/male/commonbones.qci"
$proceduralbones "humans/male.vrd"
// $popd

$include "optimization.qci"
