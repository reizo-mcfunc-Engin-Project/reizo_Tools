#> reizo_tools:asset/tools/0002.display_tool/tick/cursor/particle
#
# 
#
# @within function reizo_tools:asset/tools/0002.display_tool/tick/cursor/check

# 俺にパーティクルを見せてくれ！
execute rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand] positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand] run particle electric_spark ^0.5 ^ ^ ~ ~ ~ 0 0 force @p[tag=reizo_mcfunc_Engin.User]
execute rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand] positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand] run particle dust{color:[0,9,1],scale:1} ^0.5 ^ ^ ~ ~ ~ 0 0 force @p[tag=reizo_mcfunc_Engin.User]