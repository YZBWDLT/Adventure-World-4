# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 720

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -159 -18 109 -159 -16 111 minecraft:nether_brick_fence
fill -184 -18 98 -184 -16 96 minecraft:nether_brick_fence

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -160 -12 92

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=1}] -162 -18 108 function system/summon/piglin1
execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=1}] -169 -17 113 function system/summon/piglin1
execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=1}] -162 -18 105 function system/summon/piglin1
execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=1}] -170 -17 102 function system/summon/piglin2
execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=1}] -162 -18 113 function system/summon/piglin2
execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=1}] -164 -18 93 function system/summon/piglin3

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave1

## 标题
title @a subtitle §c7-2