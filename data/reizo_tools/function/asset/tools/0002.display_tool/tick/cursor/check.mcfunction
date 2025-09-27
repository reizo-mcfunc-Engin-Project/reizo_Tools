#> reizo_tools:asset/tools/0002.display_tool/tick/cursor/check
#
# 
#
# @within function reizo_tools:asset/tools/0002.display_tool/tick/_

# 左手
execute \
unless score @s reizo_mcfunc_Engin.Sneaking matches 1.. \
if data storage reizo_mcfunc_engin:_ Tool.Off_Address \
anchored eyes \
positioned ^ ^ ^4 run \
function reizo_tools:asset/tools/0002.display_tool/tick/cursor/particle

# 右手
execute \
unless score @s reizo_mcfunc_Engin.Sneaking matches 1.. \
if data storage reizo_mcfunc_engin:_ Tool.Main_Address \
anchored eyes \
positioned ^ ^ ^2 run \
function reizo_tools:asset/tools/0002.display_tool/tick/cursor/particle