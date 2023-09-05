# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 加载结构
structure load 3_4_layer1_water -178 -16 18 0_degrees none layer_by_layer 5.00

## 标题提醒
title @a times 0 60 0
title @a title §1
title @a subtitle §c注意！水位上涨！

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=341}] ~~~ execute @a[tag=alive] -176 -7 24 function system/summon/guardian1
execute @e[name=level,scores={background=341}] ~~~ execute @a[tag=alive] -169 -14 26 function system/summon/guardian1
execute @e[name=level,scores={background=341}] ~~~ execute @a[tag=alive] -176 -9 19 function system/summon/creeper2
execute @e[name=level,scores={background=341}] ~~~ execute @a[tag=alive] -169 2 23 function system/summon/skeleton2
execute @e[name=level,scores={background=341}] ~~~ execute @a[tag=alive] -170 2 23 function system/summon/drowned2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more

scoreboard players set @e[name=timeline] active 0
scoreboard players set @e[name=timeline] time 0