# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=221}] ~~~ execute @a[tag=alive] -92 -9 65 function system/summon/skeleton1
execute @e[name=level,scores={stats=221}] ~~~ execute @a[tag=alive] -79 -15 70 function system/summon/zombie1
execute @e[name=level,scores={stats=221}] ~~~ execute @a[tag=alive] -89 -17 61 function system/summon/zombie1
execute @e[name=level,scores={stats=221}] ~~~ execute @a[tag=alive] -74 -11 62 function system/summon/spider1
execute @e[name=level,scores={stats=221}] ~~~ execute @a[tag=alive] -95 -1 68 function system/summon/spider1
execute @e[name=level,scores={stats=221}] ~~~ execute @a[tag=alive] -82 0 62 function system/summon/spider1


## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more