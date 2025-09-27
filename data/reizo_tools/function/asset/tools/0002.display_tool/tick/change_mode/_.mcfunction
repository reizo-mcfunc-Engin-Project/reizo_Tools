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

#> tellraw
    # 0
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:0} run \
    tellraw @s [{"text":"モード","color":"aqua"},{"text":":","color":"white"},{"text":"召喚","color":"gold"}]
    # 1
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:1} run \
    tellraw @s [{"text":"モード","color":"aqua"},{"text":":","color":"white"},{"text":"削除","color":"gold"}]
    # 2
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:2} run \
    tellraw @s [{"text":"モード","color":"aqua"},{"text":":","color":"white"},{"text":"セーブ","color":"gold"}]
    # 3
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:3} run \
    tellraw @s [{"text":"モード","color":"aqua"},{"text":":","color":"white"},{"text":"ロード","color":"gold"}]

# スコアリセット
scoreboard players reset $Tools.DisplayTool.Mode reizo_mcfunc_Engin.Temp