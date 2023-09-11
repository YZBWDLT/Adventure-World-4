# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 210

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -76 18 58 -74 19 58 minecraft:cobblestone_wall["wall_block_type":"diorite"]
setblock -75 20 58 minecraft:cobblestone_wall["wall_block_type":"diorite"]
fill -69 18 64 -69 20 66 minecraft:cobblestone_wall["wall_block_type":"diorite"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -83 18 64

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=210}] ~~~ execute @a[scores={isAlive=1}] -78 21 69 function system/summon/spider1
execute @e[name=level,scores={background=210}] ~~~ execute @a[scores={isAlive=1}] -73 21 69 function system/summon/spider1
execute @e[name=level,scores={background=210}] ~~~ execute @a[scores={isAlive=1}] -74 21 60 function system/summon/skeleton1
execute @e[name=level,scores={background=210}] ~~~ execute @a[scores={isAlive=1}] -75 18 69 function system/summon/zombie1

##【无需更改】 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave1

## 标题
title @a subtitle §c2-1