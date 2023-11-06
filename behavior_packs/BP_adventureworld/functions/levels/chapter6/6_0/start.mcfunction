# 开始游戏

## --- 设置level ---
scoreboard players set @e[name=level] background 600

function methods/important_items_tester

## --- 标题&音效 ---
title @a times 0 100 0
title @a title §7§l山 峦 神 殿
title @a subtitle §c6-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## --- 设置重生点 ---
tp @e[family=respawner] -78 -31 -29

## 封堵6-3
fill -74 -32 -23 -77 -32 -22 minecraft:obsidian[] keep