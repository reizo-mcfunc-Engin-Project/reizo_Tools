#> reizo_tools:asset/tools/0002.display_tool/tick/kill/_
#
# 
#
# @within function reizo_tools:asset/tools/0002.display_tool/tick/_

# ブロックディスプレイ
execute \
if entity @s[type=block_display] \
positioned ~0.5 ~0.5 ~0.5 run \
function reizo_tools:asset/tools/0002.display_tool/tick/kill/cube_particle

# アイテムディスプレイ
execute \
if entity @s[type=item_display] \
positioned ~ ~ ~ run \
function reizo_tools:asset/tools/0002.display_tool/tick/kill/cube_particle

# テキストディスプレイ
execute \
if entity @s[type=text_display] \
positioned ~ ~ ~ run \
function reizo_tools:asset/tools/0002.display_tool/tick/kill/cube_particle