#> reizo_tools/function/asset/mob/0001.sandbag/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 自動的に近くのプレイヤーの方を見る
tp @s ~ ~ ~ facing entity @p[distance=..7]