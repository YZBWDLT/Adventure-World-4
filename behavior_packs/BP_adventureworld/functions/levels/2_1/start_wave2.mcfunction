# 开始游戏 - 后续波

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=211}] ~~~ execute @a[tag=alive] -75 18 70 function system/summon/skeleton2
execute @e[name=level,scores={stats=211}] ~~~ execute @a[tag=alive] -75 21 60 function system/summon/spider1
execute @e[name=level,scores={stats=211}] ~~~ execute @a[tag=alive] -75 21 68 function system/summon/spider1

##【无需更改】 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more