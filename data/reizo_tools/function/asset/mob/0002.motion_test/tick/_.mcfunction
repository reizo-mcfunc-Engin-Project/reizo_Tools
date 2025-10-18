#> reizo_tools/function/asset/mob/0002.motion_test/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 下にRSランプがないならRSBのところに土を。
execute \
positioned ~ ~-0.5 ~ \
unless block ~ ~ ~ redstone_lamp run \
function reizo_tools:asset/mob/0002.motion_test/tick/set_dirt

# 下にRSランプがあるなら光らせる
execute \
positioned ~ ~-0.5 ~ \
if block ~ ~ ~ redstone_lamp run \
setblock ~ ~-1 ~ redstone_block

particle cloud