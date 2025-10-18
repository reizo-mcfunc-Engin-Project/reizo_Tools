#>reizo_tools:asset/mob/0002.motion_test/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    # data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"",namespace:""}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    # data modify storage reizo_mcfunc_engin:mob Register.Name set value ""
    # 体力はどれぐらい？ Float型
    # data modify storage reizo_mcfunc_engin:mob Register.Health set value 1.0f
    # 持っているアイテム String型
        # head
        data modify storage reizo_mcfunc_engin:mob Register.Head set value {id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlkNjUxZDIyMzhiODczZmU0M2FmYzM4NTQ0N2RhY2VkMWYzYTcyOTJjYTQ3ZWU0NzYyMzI5NzNjMTM5ZjI0YyJ9fX0="}]}}}
        # chest
        data modify storage reizo_mcfunc_engin:mob Register.Chest set value {id:"minecraft:iron_chestplate"}
        # legs
        # data modify storage reizo_mcfunc_engin:mob Register.Legs set value {id:}
        # feet
        # data modify storage reizo_mcfunc_engin:mob Register.Feet set value {id:}
        # main_hand
        data modify storage reizo_mcfunc_engin:mob Register.main_hand set value {id:"minecraft:iron_sword"}
        # off_hand
        data modify storage reizo_mcfunc_engin:mob Register.off_hand set value {id:"minecraft:iron_sword"}
    # 大きさはどれくらい？ Max = 16.0d double型
    # data modify storage reizo_mcfunc_engin:mob Register.Scale set value 1.1d
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b
    # 燃えるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Flammable set value 0b
    # 重力がどれくらい影響するか。高ければ高いほど重力の影響を受ける。値を-にすると浮き始める。 double型
    # data modify storage reizo_mcfunc_engin:mob Register.Gravity set value 0.08d