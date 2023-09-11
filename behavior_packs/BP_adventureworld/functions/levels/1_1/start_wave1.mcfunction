# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 110

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -118 1 14 -116 3 14 minecraft:cobblestone_wall["wall_block_type":"sandstone"]
fill -118 1 32 -116 3 32 minecraft:cobblestone_wall["wall_block_type":"sandstone"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -117 9 22

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=110}] ~~~ execute @a[scores={isAlive=1}] -123 1 28 function system/summon/zombie1
execute @e[name=level,scores={background=110}] ~~~ execute @a[scores={isAlive=1}] -110 1 28 function system/summon/zombie1

##【无需更改】 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave1

## 标题
title @a subtitle §c1-1