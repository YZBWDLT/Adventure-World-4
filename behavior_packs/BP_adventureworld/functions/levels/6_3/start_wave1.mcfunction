# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 630

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -76 -37 -17 -74 -35 -17 minecraft:deepslate_brick_wall
fill -74 -39 8 -76 -37 8 minecraft:deepslate_brick_wall

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -82 -34 -16

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=630}] ~~~ execute @a[tag=alive] -74 -35 -2 function system/summon/drowned_with_trident2
execute @e[name=level,scores={background=630}] ~~~ execute @a[tag=alive] -79 -39 3 function system/summon/drowned_with_trident2
execute @e[name=level,scores={background=630}] ~~~ execute @a[tag=alive] -71 -37 -13 function system/summon/drowned_with_trident2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c6-3

time set midnight