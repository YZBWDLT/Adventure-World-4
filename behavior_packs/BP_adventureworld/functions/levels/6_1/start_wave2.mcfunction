# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=611}] ~~~ execute @a[tag=alive] -77 -31 -47 function system/summon/skeleton2
execute @e[name=level,scores={background=611}] ~~~ execute @a[tag=alive] -76 -31 -53 function system/summon/skeleton2
execute @e[name=level,scores={background=611}] ~~~ execute @a[tag=alive] -73 -28 -54 function system/summon/spider2
execute @e[name=level,scores={background=611}] ~~~ execute @a[tag=alive] -71 -31 -58 function system/summon/cave_spider2
execute @e[name=level,scores={background=611}] ~~~ execute @a[tag=alive] -75 -31 -62 function system/summon/zombie2
execute @e[name=level,scores={background=611}] ~~~ execute @a[tag=alive] -80 -27 -58 function system/summon/zombie2
execute @e[name=level,scores={background=611}] ~~~ execute @a[tag=alive] -70 -30 -49 function system/summon/creeper1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more