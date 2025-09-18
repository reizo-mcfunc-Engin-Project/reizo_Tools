#> reizo_tools:asset/tools/0002.display_tool/tick/_
#
# ディスプレイツールの動作。
#
# @within function reizo_tools:asset/tools/.manager/tick/run.m/_

# 俺にだけ見えててくれ！(パクリ)
tag @s add reizo_mcfunc_Engin.User

# しゃがんでて笑う。
execute \
if score @s reizo_mcfunc_Engin.Sneaking matches 1.. \
as @n[type=#reizo_mcfunc_engin:displays] at @s run \
function reizo_tools:asset/tools/0002.display_tool/tick/sneak/_

# 左手
execute \
unless score @s reizo_mcfunc_Engin.Sneaking matches 1.. \
if data storage reizo_mcfunc_engin:_ Tool.Off_Address \
anchored eyes \
positioned ^ ^ ^4 run \
function reizo_tools:asset/tools/0002.display_tool/tick/cursor

# 右手
execute \
unless score @s reizo_mcfunc_Engin.Sneaking matches 1.. \
if data storage reizo_mcfunc_engin:_ Tool.Main_Address \
anchored eyes \
positioned ^ ^ ^2 run \
function reizo_tools:asset/tools/0002.display_tool/tick/cursor

# リセット！
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Item
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block
tag @s remove reizo_mcfunc_Engin.User