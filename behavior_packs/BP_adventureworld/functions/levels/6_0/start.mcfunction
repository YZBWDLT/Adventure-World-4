# 开始游戏

## 设置level分数
scoreboard players set @e[name=level] stats 600

function system/important_items_tester

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 标题&音效
title @a times 0 100 0
title @a title §7§l山 峦 神 殿
title @a subtitle §c6-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## 设置重生点
spawnpoint @a -78 -31 -29

## 封堵6-3
fill -74 -32 -23 -77 -32 -22 minecraft:obsidian[] keep