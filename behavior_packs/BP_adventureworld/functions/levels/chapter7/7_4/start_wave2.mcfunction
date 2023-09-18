# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=741}] ~~~ execute @a[scores={isAlive=1}] -231 -7 86 function system/summon/magma_cube_small1
execute @e[name=level,scores={background=741}] ~~~ execute @a[scores={isAlive=1}] -225 -17 109 function system/summon/magma_cube_small1
execute @e[name=level,scores={background=741}] ~~~ execute @a[scores={isAlive=1}] -242 -16 99 function system/summon/magma_cube_small2
execute @e[name=level,scores={background=741}] ~~~ execute @a[scores={isAlive=1}] -236 -8 93 function system/summon/magma_cube_small2
execute @e[name=level,scores={background=741}] ~~~ execute @a[scores={isAlive=1}] -224 -16 91 function system/summon/magma_cube_middle1
execute @e[name=level,scores={background=740}] ~~~ execute @a[scores={isAlive=1}] -238 -8 103 function system/summon/skeleton1
## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more