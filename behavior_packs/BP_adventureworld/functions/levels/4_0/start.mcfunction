# 开始游戏

## 设置level分数
scoreboard players set @e[name=level] stats 400

function system/important_items_tester

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 标题&音效
title @a times 0 100 0
title @a title §3§l寒 冰 神 殿
title @a subtitle §c4-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## 设置重生点
spawnpoint @a -172 17 -6

## 封堵4-2入口
fill -155 7 -3 -157 9 -3 minecraft:ice

## 初始化4-1
structure load 4_1_phase1 -168 16 -23


## 调成晚上
time set 18000