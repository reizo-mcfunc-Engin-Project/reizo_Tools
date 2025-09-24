#> reizo_tools:asset/tools/0004.add_hotbar/used/check_select
#
# 
#
# @within function
#   reizo_tools:asset/tools/0004.add_hotbar/used/remove_hotbar/_
#   reizo_tools:asset/tools/0004.add_hotbar/used/move_page/_

# 配列の長さを取得
execute \
store result score $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp run \
data get storage reizo_tools:_ AddHotBar._

# セレクトされている場所をTempにコピー
execute \
store result score $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp run \
data get storage reizo_tools:_ AddHotBar.SelectHotBar

# スコアを1上げる
scoreboard players add $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp 1

# 値が配列の長さと同じなら0に
execute \
if score $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp >= $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp run \
scoreboard players set $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp 0

# 今どこのホットバーなのか伝える
title @s actionbar [{"text":"ホットバー",color:"aqua"},{"text":":","color":"white"},{"score":{name:"$Tools.AddHotBar.SelectHotBar",objective:"reizo_mcfunc_Engin.Temp"},"color":"gold"}]

# ストレージにコピー
execute \
store result storage reizo_tools:_ AddHotBar.SelectHotBar int 1 run \
scoreboard players get $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp

# スコアリセット
scoreboard players reset $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp
scoreboard players reset $Tools.AddHotBar.ListCount