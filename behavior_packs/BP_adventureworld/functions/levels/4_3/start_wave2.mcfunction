# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=431}] ~~~ execute @a[tag=alive] -155 -8 1 function system/summon/drowned_with_trident2
execute @e[name=level,scores={background=431}] ~~~ execute @a[tag=alive] -153 -10 8 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[tag=alive] -159 -10 12 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[tag=alive] -162 -8 7 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[tag=alive] -150 -14 1 function system/summon/drowned2
execute @e[name=level,scores={background=431}] ~~~ execute @a[tag=alive] -156 -10 6 function system/summon/drowned2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more