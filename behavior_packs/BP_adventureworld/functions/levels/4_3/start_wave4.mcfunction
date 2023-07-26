# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -157 -11 15 function system/summon/drowned2
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -155 -7 0 function system/summon/drowned2
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -154 -11 6 function system/summon/drowned3
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -163 -7 -0 function system/summon/drowned3
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -153 -14 2 function system/summon/guardian1
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -163 -14 11 function system/summon/guardian1
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -152 -6 7 function system/summon/stray2
execute @e[name=level,scores={stats=433}] ~~~ execute @a[tag=alive] -148 -9 -0 function system/summon/stray2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more