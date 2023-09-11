# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 340

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -168 -15 22 -168 -13 24 minecraft:cobblestone_wall["wall_block_type":"prismarine"]
fill -174 17 18 -172 19 18 minecraft:cobblestone_wall["wall_block_type":"prismarine"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -172 -1 30

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=340}] ~~~ execute @a[scores={isAlive=1}] -175 -14 25 function system/summon/drowned2
execute @e[name=level,scores={background=340}] ~~~ execute @a[scores={isAlive=1}] -176 -9 19 function system/summon/drowned2
execute @e[name=level,scores={background=340}] ~~~ execute @a[scores={isAlive=1}] -172 -6 26 function system/summon/drowned2
execute @e[name=level,scores={background=340}] ~~~ execute @a[scores={isAlive=1}] -169 -3 25 function system/summon/skeleton1
execute @e[name=level,scores={background=340}] ~~~ execute @a[scores={isAlive=1}] -169 -14 21 function system/summon/creeper2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c3-4

## 清除水
scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=timeline] active 1