# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=422}] ~~~ execute @a[tag=alive] -149 7 6 function system/summon/drowned_with_trident2
execute @e[name=level,scores={stats=422}] ~~~ execute @a[tag=alive] -154 7 8 function system/summon/drowned2
execute @e[name=level,scores={stats=422}] ~~~ execute @a[tag=alive] -161 7 1 function system/summon/drowned2
execute @e[name=level,scores={stats=422}] ~~~ execute @a[tag=alive] -163 7 11 function system/summon/drowned2
execute @e[name=level,scores={stats=422}] ~~~ execute @a[tag=alive] -162 7 4 function system/summon/drowned2
execute @e[name=level,scores={stats=422}] ~~~ execute @a[tag=alive] -153 7 1 function system/summon/stray2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more