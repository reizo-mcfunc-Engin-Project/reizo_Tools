#> reizo_tools:asset/tools/0002.display_tool/tick/kill/cube_particle
#
# 
#
# @within function reizo_tools:asset/tools/0002.display_tool/tick/kill/_

execute \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=marker] \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=marker] \
rotated ~ 0 \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=marker] run \
particle electric_spark ^0.5 ^ ^