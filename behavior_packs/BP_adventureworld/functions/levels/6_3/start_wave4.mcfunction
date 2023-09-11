# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -75 -37 -11 function system/summon/zombie3
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -74 -35 -2 function system/summon/zombie3
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -80 -35 -3 function system/summon/skeleton3
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -71 -37 -13 function system/summon/skeleton3
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -70 -39 3 function system/summon/cave_spider3
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -79 -39 3 function system/summon/cave_spider3
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -75 -39 4 function system/summon/creeper2
execute @e[name=level,scores={background=633}] ~~~ execute @a[scores={isAlive=1}] -78 -37 -11 function system/summon/witch3

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave_more