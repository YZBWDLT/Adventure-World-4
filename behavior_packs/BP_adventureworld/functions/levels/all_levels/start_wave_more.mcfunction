# 所有关卡通用的开始关卡函数

## 开启关卡检测器(functions/levels/x_x/level_tester)并记录游玩状态
scoreboard players set @e[name=timeline] active 2
tp @a[tag=!playing] @a[tag=playing,c=1]
tag @a add playing

## 为玩家补充箭
give @a arrow 64

## 玩家缺物品时，给予物品
function methods/important_items_tester