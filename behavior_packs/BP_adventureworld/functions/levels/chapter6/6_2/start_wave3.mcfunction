# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=622}] ~~~ execute @a[scores={isAlive=1}] -72 -20 -45 function system/summon/witch2
execute @e[name=level,scores={background=622}] ~~~ execute @a[scores={isAlive=1}] -82 -20 -45 function system/summon/witch2
execute @e[name=level,scores={background=622}] ~~~ execute @a[scores={isAlive=1}] -82 -20 -35 function system/summon/zombie2
execute @e[name=level,scores={background=622}] ~~~ execute @a[scores={isAlive=1}] -72 -20 -35 function system/summon/cave_spider2
execute @e[name=level,scores={background=622}] ~~~ execute @a[scores={isAlive=1}] -77 -21 -41 function system/summon/skeleton3

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more
