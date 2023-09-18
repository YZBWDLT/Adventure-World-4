# ===== 所有关卡通用的开始关卡函数 =====
# 第二波及以后的怪物波潮

## --- 设置上一波已通过的标记为0 ---
scoreboard players set @e[name=lastWaveCompleted] background 0

## --- 设置怪物延迟生成的时间 ---
scoreboard players set @e[name=monsterSummonDelay] time 40

## --- 开启关卡检测器 ---
## (functions/levels/x_x/level_tester)并记录游玩状态
scoreboard players set @e[name=timeline] active 2
tag @a add playing
scoreboard players set @a isAlive 1

## --- 为玩家补充箭 ---
give @a[hasitem={item=bow}] arrow 64

## --- 玩家缺物品时，给予物品 ---
function methods/important_items_tester