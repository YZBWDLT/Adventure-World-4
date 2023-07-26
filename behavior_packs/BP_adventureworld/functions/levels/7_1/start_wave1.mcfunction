# 开始游戏 - 第一波

## 防止误判断为第一波已完成
scoreboard players set @e[name=monsterAmount] stats 14

## 设置level分数
scoreboard players set @e[name=level] stats 710

fill -150 -18 102 -150 -16 100 minecraft:nether_brick_fence

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -112 13 -103

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -130 -17 107 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -136 -17 99 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -144 -17 102 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -130 -17 112 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -132 -10 99 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -140 -8 106 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -125 -17 101 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -146 -17 98 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -118 -16 113 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -124 -18 96 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -121 -18 101 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -137 -18 98 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -145 -18 111 function system/summon/zombified_piglin1
execute @e[name=level,scores={stats=710}] ~~~ execute @a[tag=alive] -140 -10 105 function system/summon/zombified_piglin1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c7-1