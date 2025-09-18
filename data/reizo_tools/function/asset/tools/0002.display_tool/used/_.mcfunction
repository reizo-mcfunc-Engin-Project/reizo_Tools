#> reizo_tools:asset/tools/0002.display_tool/used/_
#
# ディスプレイツールの使ったときの処理。
#
# @within function reizo_tools:asset/tools/0002.display_tool/tick/_

# しゃがんでないならそのまま召喚
execute \
unless score @s reizo_mcfunc_Engin.Sneaking matches 1.. run \
function reizo_tools:asset/tools/0002.display_tool/used/sneak/false/_

# しゃがんでいるなら近くのディスプレイをkill
execute \
if score @s reizo_mcfunc_Engin.Sneaking matches 1.. \
if entity @n[type=#reizo_mcfunc_engin:displays] run \
function reizo_tools:asset/tools/0002.display_tool/used/sneak/true/_