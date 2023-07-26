# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] stats 130

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -139 11 34 -139 13 32 minecraft:cobblestone_wall["wall_block_type":"red_sandstone"]
fill -121 18 25 -121 20 27 minecraft:cobblestone_wall["wall_block_type":"red_sandstone"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -141 18 26

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=130}] ~~~ execute @a[tag=alive] -136 18 19 function system/summon/skeleton1
execute @e[name=level,scores={stats=130}] ~~~ execute @a[tag=alive] -136 20 33 function system/summon/zombie1
execute @e[name=level,scores={stats=130}] ~~~ execute @a[tag=alive] -124 16 19 function system/summon/zombie1
execute @e[name=level,scores={stats=130}] ~~~ execute @a[tag=alive] -131 13 27 function system/summon/zombie1

##【无需更改】 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c1-3