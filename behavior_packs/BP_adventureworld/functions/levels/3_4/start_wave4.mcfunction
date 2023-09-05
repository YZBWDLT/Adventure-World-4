# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 加载结构
structure load 3_4_layer3 -178 6 18 0_degrees none layer_by_layer 5.00

## 标题提醒
title @a times 0 60 0
title @a title §1
title @a subtitle §c注意！水位上涨！

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=343}] ~~~ execute @a[tag=alive] -173 8 27 function system/summon/guardian1
execute @e[name=level,scores={background=343}] ~~~ execute @a[tag=alive] -172 -6 26 function system/summon/guardian1
execute @e[name=level,scores={background=343}] ~~~ execute @a[tag=alive] -173 -14 26 function system/summon/creeper2
execute @e[name=level,scores={background=343}] ~~~ execute @a[tag=alive] -169 2 23 function system/summon/creeper2
execute @e[name=level,scores={background=343}] ~~~ execute @a[tag=alive] -173 -11 20 function system/summon/drowned3
execute @e[name=level,scores={background=343}] ~~~ execute @a[tag=alive] -169 10 27 function system/summon/drowned3
execute @e[name=level,scores={background=343}] ~~~ execute @a[tag=alive] -172 17 20 function system/summon/skeleton1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more