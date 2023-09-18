# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=742}] ~~~ execute @a[scores={isAlive=1}] -224 -16 91 function system/summon/magma_cube_middle2
execute @e[name=level,scores={background=742}] ~~~ execute @a[scores={isAlive=1}] -231 -7 86 function system/summon/magma_cube_middle2
execute @e[name=level,scores={background=742}] ~~~ execute @a[scores={isAlive=1}] -241 -16 89 function system/summon/magma_cube_large1
execute @e[name=level,scores={background=742}] ~~~ execute @a[scores={isAlive=1}] -227 -18 102 function system/summon/magma_cube_large1

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more