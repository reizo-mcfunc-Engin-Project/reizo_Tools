#> reizo_tools:asset/tools/0001.check_point/used/summon/get_marker_pos
#
# 召喚したマーカーのPosを取得する。
#
# @within function reizo_tools:asset/tools/0001.check_point/used/summon/_

# Pos取得
data modify storage reizo_tools:_ MarkerPos.x set from entity @s Pos[0]
data modify storage reizo_tools:_ MarkerPos.y set from entity @s Pos[1]
data modify storage reizo_tools:_ MarkerPos.z set from entity @s Pos[2]