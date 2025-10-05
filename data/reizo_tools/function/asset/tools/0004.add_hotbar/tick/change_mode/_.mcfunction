#> reizo_tools:asset/tools/0004.add_hotbar/tick/change_mode/_
#
# 
#
# @within function reizo_tools:asset/tools/0004.add_hotbar/tick/_

# OMD呼び出し
function #oh_my_dat:please

# OMDをストレージに。
data modify storage reizo_tools:_ AddHotBar.Mode set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.Mode

# 持ってきた値をスコアに。
execute \
store result score $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp run \
data get storage reizo_tools:_ AddHotBar.Mode

# スコアアップ
scoreboard players add $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp 1

execute \
if score $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp matches 3.. run \
scoreboard players set $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp 0

# 0なら
execute \
if score $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp matches 0 run \
function reizo_tools:asset/tools/0004.add_hotbar/tick/change_mode/staging/0

# 1なら
execute \
if score $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp matches 1 run \
function reizo_tools:asset/tools/0004.add_hotbar/tick/change_mode/staging/1

# 2なら
execute \
if score $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp matches 2 run \
function reizo_tools:asset/tools/0004.add_hotbar/tick/change_mode/staging/2

# ストレージに移行
execute \
store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.Mode int 1 run \
scoreboard players get $Tools.AddHotBar.Mode reizo_mcfunc_Engin.Temp

# リセット
scoreboard players reset $Tools.AddHotBar.Mode
data remove storage reizo_tools:_ AddHotBar.Mode

# 音
playsound ui.button.click master @s ~ ~ ~ 1 2