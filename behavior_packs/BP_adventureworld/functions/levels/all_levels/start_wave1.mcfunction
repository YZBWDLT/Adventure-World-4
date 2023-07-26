# 所有关卡通用的开始关卡函数

## 重要物品检测器
function system/important_items_tester

## 开启关卡检测器(functions/levels/x_x/level_tester)并记录游玩状态
scoreboard players set @e[name=levelTesting] active 1
tag @a add playing
tag @a add alive

## 改玩家为冒险模式
gamemode adventure @a[tag=playing]

## 清除药效
effect @a clear

## 传送玩家到已经进入房间的玩家处
tp @a[tag=!intoLevel] @a[tag=intoLevel,c=1]

## 为玩家补充箭
## 还是那个很烦人的/loot不能同时给予的问题，要用到遍历器，下面的这个标签是开遍历器用的
tag @e remove arrowTraversing
execute @a[c=1,hasitem={item=bow}] ~~~ scoreboard players set @e[name=arrowTraversing] active 1

## 为玩家补充药水
## 还是还是仍然是那个很烦人的/loot不能同时给予的问题，要用到遍历器，下面的这个标签是开遍历器用的
tag @a remove potionTraversing
scoreboard players set @e[name=potionTraversing] active 1

## 显示标题准备工作
title @a times 0 60 0
title @a title §1

## 失败多次后，给予药效
execute @e[name=failedTimes,scores={stats=3..}] ~~~ effect @a strength 1000 1 true
execute @e[name=failedTimes,scores={stats=5..}] ~~~ effect @a health_boost 1000 4 true
execute @e[name=failedTimes,scores={stats=5..}] ~~~ effect @a resistance 1000 0 true

## 移除残留绳枪
kill @e[type=aw:hookshot]