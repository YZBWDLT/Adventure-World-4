# 开始游戏

## 设置level分数
scoreboard players set @e[name=level] background 200

function methods/important_items_tester

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 标题&音效
title @a times 0 100 0
title @a title §a§l丛 林 神 殿
title @a subtitle §c2-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## 设置重生点
spawnpoint @a -77 18 26