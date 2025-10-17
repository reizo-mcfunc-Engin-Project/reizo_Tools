#> reizo_tools/function/asset/mob/0001.sandbag/summon/_
#
# Mobの召喚処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m

# 元となるEntityの召喚
summon zombie ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Mob","reizo_mcfunc_Engin.Mob.Init"]}

# スポーンするためのマーカーを召喚
function reizo_mcfunc_engin:api/object/summon.m {ID:"0002.sandbag_spawn_marker",namespace:"reizo_tools"}