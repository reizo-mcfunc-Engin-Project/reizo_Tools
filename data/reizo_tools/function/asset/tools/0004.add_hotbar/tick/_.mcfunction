#> reizo_tools:asset/tools/0004.add_hotbar/tick/_
#
# 
#
# @within function reizo_tools:asset/tools/.manager/tick/run.m/_

# シフトを一瞬押した
execute \
if score @s reizo_mcfunc_Engin.Sneaking matches 2 \
rotated 0 0 run \
function reizo_tools:asset/tools/0004.add_hotbar/tick/change_mode/_