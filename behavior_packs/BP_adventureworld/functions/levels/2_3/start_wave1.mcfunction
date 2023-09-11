# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 230

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -141 -21 60 -141 -19 62 minecraft:cobblestone_wall["wall_block_type":"diorite"]
fill -167 -21 60 -167 -19 62 minecraft:cobblestone_wall["wall_block_type":"diorite"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -154 -21 46

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=230}] ~~~ execute @a[scores={isAlive=1}] -159 -21 66 function system/summon/spider1
execute @e[name=level,scores={background=230}] ~~~ execute @a[scores={isAlive=1}] -159 -21 56 function system/summon/spider1
execute @e[name=level,scores={background=230}] ~~~ execute @a[scores={isAlive=1}] -149 -21 56 function system/summon/spider1
execute @e[name=level,scores={background=230}] ~~~ execute @a[scores={isAlive=1}] -149 -21 66 function system/summon/spider1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c2-3