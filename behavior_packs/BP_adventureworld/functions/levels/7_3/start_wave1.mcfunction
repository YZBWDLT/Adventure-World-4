# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] stats 730

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -192 -18 96 -192 -16 98 minecraft:cobblestone_wall["wall_block_type":"nether_brick"]
fill -217 -18 98 -217 -16 100 minecraft:cobblestone_wall["wall_block_type":"nether_brick"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -203 -12 114

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=730}] ~~~ execute @a[tag=alive] -200 -18 98 function system/summon/skeleton1
execute @e[name=level,scores={stats=730}] ~~~ execute @a[tag=alive] -195 -18 96 function system/summon/skeleton1
execute @e[name=level,scores={stats=730}] ~~~ execute @a[tag=alive] -203 -17 104 function system/summon/zombified_piglin2
execute @e[name=level,scores={stats=730}] ~~~ execute @a[tag=alive] -202 -16 96 function system/summon/zombified_piglin2
execute @e[name=level,scores={stats=730}] ~~~ execute @a[tag=alive] -207 -16 90 function system/summon/skeleton2
execute @e[name=level,scores={stats=730}] ~~~ execute @a[tag=alive] -214 -18 95 function system/summon/skeleton2
execute @e[name=level,scores={stats=730}] ~~~ execute @a[tag=alive] -205 -16 99 function system/summon/zombified_piglin3

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c7-3