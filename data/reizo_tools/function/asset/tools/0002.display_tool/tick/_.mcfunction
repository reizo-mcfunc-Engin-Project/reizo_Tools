#> reizo_tools:asset/tools/0002.display_tool/tick/_
#
# ディスプレイツールの動作。
#
# @within function reizo_tools:asset/tools/.manager/tick/run.m/_

# OMD呼び出し
function #oh_my_dat:please

# OMDコピー
data modify storage reizo_tools:_ DisplayTool set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.DisplayTool

# Modeがないなら0に。
execute \
unless data storage reizo_tools:_ DisplayTool.Mode run \
data modify storage reizo_tools:_ DisplayTool.Mode set value 0

# Mode変更
execute \
if score @s reizo_mcfunc_Engin.Sneaking matches 2 \
rotated 0 0 run \
function reizo_tools:asset/tools/0002.display_tool/tick/change_mode/_

# 俺にだけ見えててくれ！(パクリ)
execute \
if data storage reizo_tools:_ DisplayTool{Mode:0} run \
tag @s add reizo_mcfunc_Engin.User

#> Mode
    # 0
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:0} run \
    function reizo_tools:asset/tools/0002.display_tool/tick/cursor/check
    # 1
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:1} \
    as @n[type=#reizo_mcfunc_engin:displays] at @s run \
    function reizo_tools:asset/tools/0002.display_tool/tick/kill/_

# OMDへコピー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.DisplayTool set from storage reizo_tools:_ DisplayTool

# リセット！
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Item
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block
data remove storage reizo_tools:_ DisplayTool
tag @s remove reizo_mcfunc_Engin.User