# 开始游戏

## --- 设置level ---
scoreboard players set @e[name=level] background 500

function methods/important_items_tester

## --- 标题&音效 ---
title @a times 0 100 0
title @a title §f§l红 石 神 殿
title @a subtitle §c5-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## --- 设置重生点 ---
tp @e[family=respawner] -95 -31 -13

## --- 清除玩家的皮革靴子 ---
clear @a leather_boots

## --- 清除4-4可能在最后生成的生成器 ---
## 在6-1发现了来自4-4的怪物，理论上来说生成器是应当被销毁的
kill @e[family=summoner]