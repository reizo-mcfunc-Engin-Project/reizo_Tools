#> reizo_tools:asset/tools/0002.display_tool/used/_
#
# ディスプレイツールの使ったときの処理。
#
# @within function reizo_tools:asset/tools/0002.display_tool/tick/_

# OMD呼び出し
function #oh_my_dat:please

# OMDコピー
data modify storage reizo_tools:_ DisplayTool.Mode set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.DisplayTool.Mode

#> Modeで処理変更
    # 0
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:0} run \
    function reizo_tools:asset/tools/0002.display_tool/used/summon/_
    # 1
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:1} run \
    function reizo_tools:asset/tools/0002.display_tool/used/kill/_
    # 2
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:2} run \
    function reizo_tools:asset/tools/0002.display_tool/used/save/_
    # 3
    execute \
    if data storage reizo_tools:_ DisplayTool{Mode:3} run \
    function reizo_tools:asset/tools/0002.display_tool/used/load/_

# remove
data remove storage reizo_tools:_ DisplayTool.Mode