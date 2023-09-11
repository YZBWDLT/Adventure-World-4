# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 620

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -81 -19 -48 -79 -17 -48 minecraft:stained_glass["color":"purple"]
fill -72 -19 -32 -70 -17 -32 minecraft:stained_glass["color":"purple"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -78 -11 -30

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=620}] ~~~ execute @a[scores={isAlive=1}] -80 -21 -43 function system/summon/zombie3
execute @e[name=level,scores={background=620}] ~~~ execute @a[scores={isAlive=1}] -73 -21 -41 function system/summon/zombie3
execute @e[name=level,scores={background=620}] ~~~ execute @a[scores={isAlive=1}] -81 -21 -39 function system/summon/skeleton2
execute @e[name=level,scores={background=620}] ~~~ execute @a[scores={isAlive=1}] -77 -21 -41 function system/summon/skeleton2
execute @e[name=level,scores={background=620}] ~~~ execute @a[scores={isAlive=1}] -77 -20 -34 function system/summon/cave_spider2

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave1

## 标题
title @a subtitle §c6-2