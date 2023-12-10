# ===== 开始游戏 =====

## --- 设置level ---
scoreboard players set @e[name=level] background 101

## --- 标题&音效 ---
title @a times 0 100 0
title @a title §e§l沙 漠 神 殿
title @a subtitle §c1-0
scoreboard players set @e[name=soundPlayer] active 14

## --- 给予玩家装备 ---
replaceitem entity @a slot.armor.head 0 minecraft:leather_helmet 1 0 {"item_lock": { "mode": "lock_in_slot" }}
replaceitem entity @a slot.armor.chest 0 minecraft:leather_chestplate 1 0 {"item_lock": { "mode": "lock_in_slot" }}
replaceitem entity @a slot.armor.legs 0 minecraft:leather_leggings 1 0 {"item_lock": { "mode": "lock_in_slot" }}
replaceitem entity @a slot.armor.feet 0 minecraft:leather_boots 1 0 {"item_lock": { "mode": "lock_in_slot" }}
give @a aw:normal_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

## --- 传送所有玩家并设置重生点 ---
tp @a -117 1 -6
tp @e[family=respawner] -117 1 -6

function methods/supplier/items
