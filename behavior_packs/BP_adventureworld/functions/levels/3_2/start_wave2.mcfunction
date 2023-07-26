# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 复制建筑（如果需要的话）
structure load 3_2_phase2 -192 -22 -1 0_degrees none layer_by_layer 4.00 false true

## 标题提醒
title @a times 0 60 0
title @a title §1
title @a subtitle §c注意！水位上涨！

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=321}] ~~~ execute @a[tag=alive] -180 -21 9 function system/summon/guardian1
execute @e[name=level,scores={stats=321}] ~~~ execute @a[tag=alive] -181 -17 13 function system/summon/drowned2
execute @e[name=level,scores={stats=321}] ~~~ execute @a[tag=alive] -178 -17 10 function system/summon/drowned2
execute @e[name=level,scores={stats=321}] ~~~ execute @a[tag=alive] -180 -17 8 function system/summon/drowned2
execute @e[name=level,scores={stats=321}] ~~~ execute @a[tag=alive] -183 -17 11 function system/summon/drowned2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more