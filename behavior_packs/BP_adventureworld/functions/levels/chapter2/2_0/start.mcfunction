# 开始游戏

## --- 设置level ---
scoreboard players set @e[name=level] background 200

function methods/important_items_tester

## --- 标题&音效 ---
title @a times 0 100 0
title @a title §a§l丛 林 神 殿
title @a subtitle §c2-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## --- 设置重生点 ---
tp @e[family=respawner] -77 18 26