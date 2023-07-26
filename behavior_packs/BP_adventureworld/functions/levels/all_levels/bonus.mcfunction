# 所有关卡通用奖励功能

## 标题与音效
title @a times 0 60 0
title @a title §1
title @a subtitle §a关卡已完成！
execute @a ~~~ playsound random.levelup @s ~~~ 0.5 1.25

## 启动奖励遍历器
### 因为loot give直接套execute @a会导致不能同时插入，所以此处必须使用遍历循环
### 使用bonusTraversing代表开启奖励遍历器，方便后续可以将这个循环执行的命令关闭
### 奖励遍历器的路径：functions/system/bonus_traverser
tag @a remove bonusTraversing
scoreboard players set @e[name=bonusTraversing] active 1

## 将死亡的玩家放出来
tp @a[tag=!alive] @a[tag=alive,c=1]
tag @a add alive

## 失败次数归零
scoreboard players set @e[name=failedTimes] stats 0

## 清除所有的状态效果
effect @a clear

## 回满血
effect @a instant_health 1 20 true