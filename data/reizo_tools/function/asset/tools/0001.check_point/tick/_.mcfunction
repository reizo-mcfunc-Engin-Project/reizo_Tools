#> reizo_tools:asset/tools/0001.check_point/tick/_
#
# 俺、チェックポイント召喚できます！
#
# @within function reizo_tools:asset/tools/.manager/tick/run.m/_

# シフト押してそう
execute \
if score @s reizo_mcfunc_Engin.Sneaking matches 1.. \
if score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker,limit=1,distance=..1000] reizo_mcfunc_Engin.ScoreID \
positioned as @n[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker,limit=1] run \
particle electric_spark ~ ~1.3 ~