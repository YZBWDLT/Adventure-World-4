# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 440

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -143 -31 7 -143 -29 5 minecraft:ice
fill -117 -31 7 -117 -29 5 minecraft:ice

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -145 -23 6

## 生成守卫者
execute @e[name=level,scores={background=440}] ~~~ execute @a[scores={isAlive=1},c=1] -138 -30 -2 function system/summon/guardian1
execute @e[name=level,scores={background=440}] ~~~ execute @a[scores={isAlive=1},c=1] -122 -30 -2 function system/summon/guardian1
execute @e[name=level,scores={background=440}] ~~~ execute @a[scores={isAlive=1},c=1] -122 -30 14 function system/summon/guardian1
execute @e[name=level,scores={background=440}] ~~~ execute @a[scores={isAlive=1},c=1] -138 -30 14 function system/summon/guardian1
effect @e[type=guardian] resistance 1000 20 true

## 初始化剩余时间数值
scoreboard players set @e[name=timeLeft] time 180
scoreboard players random @e[name=monsterRefreshLeft] time 3 10

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c4-4