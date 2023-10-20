# 开始游戏

## --- 设置level ---
scoreboard players set @e[name=level] background 400

function methods/important_items_tester

## --- 标题&音效 ---
title @a times 0 100 0
title @a title §3§l寒 冰 神 殿
title @a subtitle §c4-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## --- 设置重生点 ---
spawnpoint @a -172 17 -6

## 封堵4-2入口
fill -155 7 -3 -157 9 -3 minecraft:ice

## 初始化4-1
structure load 4_1_phase1 -168 16 -23
