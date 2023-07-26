# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=622}] ~~~ execute @a[tag=alive] -72 -20 -45 function system/summon/witch2
execute @e[name=level,scores={stats=622}] ~~~ execute @a[tag=alive] -82 -20 -45 function system/summon/witch2
execute @e[name=level,scores={stats=622}] ~~~ execute @a[tag=alive] -82 -20 -35 function system/summon/zombie2
execute @e[name=level,scores={stats=622}] ~~~ execute @a[tag=alive] -72 -20 -35 function system/summon/cave_spider2
execute @e[name=level,scores={stats=622}] ~~~ execute @a[tag=alive] -77 -21 -41 function system/summon/skeleton3

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more
