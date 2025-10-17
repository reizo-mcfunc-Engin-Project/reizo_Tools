#>reizo_tools:asset/mob/0001.sandbag/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m
# 服の色:42156

#> データ登録
    # 継承(オプション)
    # data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"",namespace:""}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "サンドバッグ君"
    # 体力はどれぐらい？ Float型
    # data modify storage reizo_mcfunc_engin:mob Register.Health set value 1.0f
    # 持っているアイテム String型
        # head
        data modify storage reizo_mcfunc_engin:mob Register.Head set value {id:"minecraft:player_head",components:{"minecraft:profile":{name:"Lamnead"}}}
        # chest
        data modify storage reizo_mcfunc_engin:mob Register.Chest set value {id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":42156}}
        # legs
        data modify storage reizo_mcfunc_engin:mob Register.Legs set value {id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":42156}}
        # feet
        data modify storage reizo_mcfunc_engin:mob Register.Feet set value {id:"minecraft:leather_boots",components:{"minecraft:dyed_color":42156}}
        # main_hand
        # data modify storage reizo_mcfunc_engin:mob Register.main_hand set value {id:}
        # off_hand
        # data modify storage reizo_mcfunc_engin:mob Register.off_hand set value {id:}
    # 大きさはどれくらい？ Max = 16.0d double型
    data modify storage reizo_mcfunc_engin:mob Register.Scale set value 0.65d
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b
    # 燃えるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Flammable set value 0b
    # 重力がどれくらい影響するか。高ければ高いほど重力の影響を受ける。値を-にすると浮き始める。 double型
    # data modify storage reizo_mcfunc_engin:mob Register.Gravity set value 0.08d