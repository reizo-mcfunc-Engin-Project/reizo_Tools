#> reizo_tools/function/asset/object/0002.sandbag_spawn_marker/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# パーティクル
    particle glow
    # 円wax_off

# サンドバッグがいないなら再召喚
execute \
unless entity @e[type=zombie,nbt={data:{Mob:{ID:"0001.sandbag",namespace:"reizo_tools"}}},distance=..0.5] run \
function reizo_tools:asset/object/0002.sandbag_spawn_marker/tick/spawn