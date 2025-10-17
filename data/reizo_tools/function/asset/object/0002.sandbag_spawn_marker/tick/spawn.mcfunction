#> reizo_tools:asset/object/0002.sandbag_spawn_marker/tick/spawn
#
# 
#
# @within function reizo_tools:asset/object/0002.sandbag_spawn_marker/tick/_

# XPキル
kill @e[type=experience_orb,distance=..0.5]

function reizo_mcfunc_engin:api/mob/summon.m {ID:"0001.sandbag",namespace:"reizo_tools"}