# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=611}] ~~~ execute @a[scores={isAlive=1}] -77 -31 -47 function system/summon/skeleton2
execute @e[name=level,scores={background=611}] ~~~ execute @a[scores={isAlive=1}] -76 -31 -53 function system/summon/skeleton2
execute @e[name=level,scores={background=611}] ~~~ execute @a[scores={isAlive=1}] -73 -28 -54 function system/summon/spider2
execute @e[name=level,scores={background=611}] ~~~ execute @a[scores={isAlive=1}] -71 -31 -58 function system/summon/cave_spider2
execute @e[name=level,scores={background=611}] ~~~ execute @a[scores={isAlive=1}] -75 -31 -62 function system/summon/zombie2
execute @e[name=level,scores={background=611}] ~~~ execute @a[scores={isAlive=1}] -80 -27 -58 function system/summon/zombie2
execute @e[name=level,scores={background=611}] ~~~ execute @a[scores={isAlive=1}] -70 -30 -49 function system/summon/creeper1

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more