# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=331}] ~~~ execute @a[tag=alive] -169 -32 29 function system/summon/drowned_with_trident2
execute @e[name=level,scores={stats=331}] ~~~ execute @a[tag=alive] -156 -24 29 function system/summon/drowned2
execute @e[name=level,scores={stats=331}] ~~~ execute @a[tag=alive] -163 -22 34 function system/summon/drowned2
execute @e[name=level,scores={stats=331}] ~~~ execute @a[tag=alive] -162 -31 34 function system/summon/guardian1
execute @e[name=level,scores={stats=331}] ~~~ execute @a[tag=alive] -162 -32 29 function system/summon/guardian1
execute @e[name=level,scores={stats=331}] ~~~ execute @a[tag=alive] -157 -20 33 function system/summon/creeper2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more