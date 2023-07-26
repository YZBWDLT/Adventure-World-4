# 开始游戏

## 设置level分数
scoreboard players set @e[name=level] stats 500

function system/important_items_tester

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 标题&音效
title @a times 0 100 0
title @a title §f§l红 石 神 殿
title @a subtitle §c5-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## 设置重生点
spawnpoint @a -95 -31 -13

## 调成白天
time set 6000