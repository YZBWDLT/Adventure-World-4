# 开始游戏
## 设置level分数
scoreboard players set @e[name=level] background 100

function methods/important_items_tester

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 传送玩家到已经进入房间的玩家处
tp @a -117 1 -6

## 标题&音效
title @a times 0 100 0
title @a title §e§l沙 漠 神 殿
title @a subtitle §c1-0
scoreboard players set @e[name=soundPlayer] active 14

## 设置重生点
spawnpoint @a -117 1 -6
