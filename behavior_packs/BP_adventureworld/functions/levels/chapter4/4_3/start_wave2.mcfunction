# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=431}] ~~~ execute @a[scores={isAlive=1}] -155 -8 1 function system/summon/drowned_with_trident2
execute @e[name=level,scores={background=431}] ~~~ execute @a[scores={isAlive=1}] -153 -10 8 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[scores={isAlive=1}] -159 -10 12 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[scores={isAlive=1}] -162 -8 7 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[scores={isAlive=1}] -150 -14 1 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[scores={isAlive=1}] -156 -10 6 function system/summon/drowned2

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more