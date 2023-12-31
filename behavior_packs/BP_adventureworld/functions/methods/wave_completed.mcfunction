# ===== 波潮完成 =====
# 调用此函数以用于标记上一波处于已完成状态，并重置怪物刷新计时

scoreboard players add @e[name=wave] background 1

## --- 补充箭 ---
function methods/supplier/arrow

## --- 释放玩家 ---
tp @a[scores={isAlive=0}] @a[scores={isAlive=1},c=1]
give @a[scores={isAlive=0}] aw:potion_health 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
effect @a[scores={isAlive=0}] clear
tellraw @a[scores={isAlive=0}] {"rawtext":[{"translate":"§7您已被释放并给予一瓶生命药水，注意安全！"}]}
scoreboard players set @a isAlive 1