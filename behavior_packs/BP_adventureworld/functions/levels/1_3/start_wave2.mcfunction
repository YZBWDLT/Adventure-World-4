# 开始游戏 - 后续波

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=131}] ~~~ execute @a[tag=alive] -136 11 22 function system/summon/husk1
execute @e[name=level,scores={stats=131}] ~~~ execute @a[tag=alive] -131 11 18 function system/summon/zombie_baby1
execute @e[name=level,scores={stats=131}] ~~~ execute @a[tag=alive] -136 18 20 function system/summon/skeleton1

##【无需更改】 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more