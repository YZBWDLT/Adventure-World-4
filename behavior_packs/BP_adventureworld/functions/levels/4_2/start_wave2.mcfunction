# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=421}] ~~~ execute @a[tag=alive] -148 7 12 function system/summon/drowned3
execute @e[name=level,scores={stats=421}] ~~~ execute @a[tag=alive] -148 7 2 function system/summon/drowned3
execute @e[name=level,scores={stats=421}] ~~~ execute @a[tag=alive] -156 7 5 function system/summon/drowned3
execute @e[name=level,scores={stats=421}] ~~~ execute @a[tag=alive] -159 7 10 function system/summon/stray2
execute @e[name=level,scores={stats=421}] ~~~ execute @a[tag=alive] -162 7 4 function system/summon/stray2
execute @e[name=level,scores={stats=421}] ~~~ execute @a[tag=alive] -159 7 -0 function system/summon/guardian1
execute @e[name=level,scores={stats=421}] ~~~ execute @a[tag=alive] -156 7 6 function system/summon/guardian1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more