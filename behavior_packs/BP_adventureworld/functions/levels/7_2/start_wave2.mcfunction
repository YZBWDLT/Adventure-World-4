# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -163 -18 108 function system/summon/hoglin2
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -164 -18 104 function system/summon/hoglin2
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -165 -17 114 function system/summon/hoglin2
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -161 -18 103 function system/summon/hoglin3
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -180 -18 111 function system/summon/piglin2
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -177 -17 109 function system/summon/piglin2
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -177 -18 114 function system/summon/piglin2
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -177 -16 107 function system/summon/piglin3
execute @e[name=level,scores={stats=721}] ~~~ execute @a[tag=alive] -181 -17 105 function system/summon/piglin4

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more