#> reizo_tools:asset/tools/0002.display_tool/tick/change_mode/_
#
# 
#
# @within function reizo_tools:asset/tools/0002.display_tool/tick/_

# Modeコピー
execute \
store result score $Tools.DisplayTool.Mode reizo_mcfunc_Engin.Temp run \
data get storage reizo_tools:_ DisplayTool.Mode

# スコアアップ
scoreboard players add $Tools.DisplayTool.Mode reizo_mcfunc_Engin.Temp 1

# 4で0に。
execute \
if score $Tools.DisplayTool.Mode reizo_mcfunc_Engin.Temp matches 4.. run \
scoreboard players set $Tools.DisplayTool.Mode reizo_mcfunc_Engin.Temp 0

# ストレージに値をコピー
execute \
store result storage reizo_tools:_ DisplayTool.Mode int 1 run \
scoreboard players get $Tools.DisplayTool.Mode reizo_mcfunc_Engin.Temp

#> Modeを伝える
    # 0
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:0} run \
    function reizo_tools:asset/tools/0002.display_tool/tick/change_mode/staging/0
    # 1
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:1} run \
    function reizo_tools:asset/tools/0002.display_tool/tick/change_mode/staging/1
    # 2
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:2} run \
    function reizo_tools:asset/tools/0002.display_tool/tick/change_mode/staging/2
    # 3
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:3} run \
    function reizo_tools:asset/tools/0002.display_tool/tick/change_mode/staging/3

# 音
playsound ui.button.click master @s ~ ~ ~ 1 2
playsound entity.player.levelup master @s ~ ~ ~ 0.1 2 0.1

# スコアリセット
scoreboard players reset $Tools.DisplayTool.Mode reizo_mcfunc_Engin.Temp