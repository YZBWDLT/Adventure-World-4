# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=743}] ~~~ execute @a[scores={isAlive=1}] -227 -18 102 function system/summon/magma_cube_large1
execute @e[name=level,scores={background=743}] ~~~ execute @a[scores={isAlive=1}] -233 -13 97 function system/summon/magma_cube_large2
execute @e[name=level,scores={background=743}] ~~~ execute @a[scores={isAlive=1}] -239 -6 92 function system/summon/ghast2
execute @e[name=level,scores={background=743}] ~~~ execute @a[scores={isAlive=1}] -227 -4 101 function system/summon/ghast2

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more