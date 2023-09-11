# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 加载结构
structure load 3_4_layer2 -178 -4 18 0_degrees none layer_by_layer 5.00

## 标题提醒
title @a times 0 60 0
title @a title §c§lBOSS 来 袭
title @a subtitle §c注意！水位上涨！

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=342}] ~~~ execute @a[scores={isAlive=1}] -174 -15 21 function system/summon/guardian1
execute @e[name=level,scores={background=342}] ~~~ execute @a[scores={isAlive=1}] -172 0 19 function system/summon/guardian1
execute @e[name=level,scores={background=342}] ~~~ execute @a[scores={isAlive=1}] -174 4 23 function system/summon/elder_guardian
execute @e[name=level,scores={background=342}] ~~~ execute @a[scores={isAlive=1}] -169 2 23 function system/summon/creeper2
execute @e[name=level,scores={background=342}] ~~~ execute @a[scores={isAlive=1}] -173 4 23 function system/summon/drowned2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more