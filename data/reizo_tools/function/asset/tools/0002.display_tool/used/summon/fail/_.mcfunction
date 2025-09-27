#> reizo_tools:asset/tools/0002.display_tool/used/summon/fail/_
#
# 
#
# @within function reizo_tools:asset/tools/0002.display_tool/used/summon/summon_display.m

# 死にます。
kill @n[tag=reizo_mcfunc_Engin.BD.Init,type=block_display,nbt={block_state:{Name:"minecraft:air"}}]

# Tag剥奪
tag @n[tag=reizo_mcfunc_Engin.BD.Init,type=block_display,nbt={block_state:{Name:"minecraft:air"}}] remove reizo_mcfunc_Engin.BD.Init

#> 左手、又は右手のアイテム取得
    # 右手！行ってこい！
    execute \
    if data storage reizo_mcfunc_engin:_ Tool.Off_Address run \
    data modify storage reizo_tools:_ DisplayTool.Item set from entity @s SelectedItem
    # 左手先よ！
    execute \
    if data storage reizo_mcfunc_engin:_ Tool.Main_Address run \
    data modify storage reizo_tools:_ DisplayTool.Item set from entity @s equipment.offhand

# 召喚
function reizo_tools:asset/tools/0002.display_tool/used/summon/fail/summon.m with storage reizo_tools:_ DisplayTool