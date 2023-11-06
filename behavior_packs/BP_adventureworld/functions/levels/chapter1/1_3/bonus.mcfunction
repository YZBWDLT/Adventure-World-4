# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 131

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a1-3已完成！\n§b+1 铁制全套装备，+1 抗性提升药水 I\n§a[抗性提升药水 I]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -139 11 34 -139 13 32 air
fill -121 18 25 -121 20 27 air

## --- 设置重生点 ---
tp @e[family=respawner] -134 11 27

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
clear @a leather_helmet
clear @a leather_chestplate
clear @a leather_leggings
clear @a leather_boots
replaceitem entity @a slot.armor.head 0 aw:iron_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @a slot.armor.chest 0 aw:iron_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @a slot.armor.legs 0 aw:iron_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @a slot.armor.feet 0 aw:iron_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a minecraft:leather_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
tellraw @a {"rawtext":[{"text":"§7已自动装备铁装备，皮革靴子已自动卸下"}]}
give @a aw:resistance_potion_1 1 0 {"item_lock": { "mode": "lock_in_inventory" }}