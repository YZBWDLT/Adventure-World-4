# ===== 获取关卡装备 =====
# 该函数在玩家使用“获取装备”物品后执行
# 执行者为玩家

# --- 为settings.simulatedLevel加分循环 ---
scoreboard players add @e[name=simulatedLevel] settings 1
scoreboard players set @e[name=simulatedLevel,scores={settings=!1..17}] settings 1

# --- 移除玩家的物品 ---
clear @s minecraft:leather_helmet
clear @s minecraft:leather_chestplate
clear @s minecraft:leather_leggings
clear @s minecraft:leather_boots
clear @s aw:iron_helmet
clear @s aw:iron_chestplate
clear @s aw:iron_leggings
clear @s aw:iron_boots
clear @s aw:diamond_helmet
clear @s aw:diamond_chestplate
clear @s aw:diamond_leggings
clear @s aw:diamond_boots

clear @s aw:normal_sword
clear @s aw:steel_sword
clear @s aw:wild_sword

clear @s aw:hookshot
clear @s aw:quiver
clear @s minecraft:shield
clear @s bow

clear @s aw:potion_growth
clear @s aw:potion_health
clear @s aw:potion_hibernation
clear @s aw:potion_purification
clear @s aw:potion_rebirth
clear @s aw:potion_thrill
clear @s aw:potion_turtle

# --- 按照分数给予物品 ---
scoreboard players operation @s temp = @e[name=simulatedLevel] settings

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（初始装备）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=1..3}] slot.armor.head 0 leather_helmet
replaceitem entity @s[scores={temp=1..6}] slot.armor.chest 0 leather_chestplate
replaceitem entity @s[scores={temp=1..5}] slot.armor.legs 0 leather_leggings
replaceitem entity @s[scores={temp=1}] slot.armor.feet 0 leather_boots
give @s[scores={temp=1..10}] aw:normal_sword

tellraw @s[scores={temp=2}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（1-1结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=2..8}] slot.armor.feet 0 aw:iron_boots
give @s[scores={temp=2..}] aw:potion_health

tellraw @s[scores={temp=3}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（1-2结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=3}] slot.armor.feet 0 aw:hookshot
give @s[scores={temp=3..}] aw:potion_health

tellraw @s[scores={temp=4}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（1-3结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=4..7}] slot.armor.head 0 aw:iron_helmet
give @s[scores={temp=4..}] aw:potion_health

tellraw @s[scores={temp=5}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（2-1结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
give @s[scores={temp=5..12}] bow

tellraw @s[scores={temp=6}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（2-2结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=6..13}] slot.armor.legs 0 aw:iron_leggings

tellraw @s[scores={temp=7}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（2-3结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=7..14}] slot.armor.chest 0 aw:iron_chestplate
give @s[scores={temp=7..}] aw:potion_growth
give @s[scores={temp=7..}] aw:potion_thrill
give @s[scores={temp=7..}] aw:potion_turtle

tellraw @s[scores={temp=8}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（3-1结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=8..}] slot.armor.head 0 aw:diamond_helmet
give @s[scores={temp=8..}] aw:potion_health

tellraw @s[scores={temp=9}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（3-2结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=9..}] slot.armor.feet 0 aw:diamond_boots
give @s[scores={temp=9..}] aw:potion_health

tellraw @s[scores={temp=10}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（3-3结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=..9}] slot.inventory 25 barrier 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={temp=10..}] slot.inventory 25 aw:quiver 1 0 {"item_lock":{"mode":"lock_in_slot"}}
give @s[scores={temp=10..}] aw:potion_health

tellraw @s[scores={temp=11}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（3-4结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
give @s[scores={temp=11..16}] aw:steel_sword

tellraw @s[scores={temp=12}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（4-1结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
give @s[scores={temp=12..}] shield
give @s[scores={temp=12..}] aw:potion_rebirth

tellraw @s[scores={temp=13}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（4-2结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
loot give @s[scores={temp=13..}] loot "bow_with_flame"
give @s[scores={temp=13..}] aw:potion_purification

tellraw @s[scores={temp=14}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（4-3结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=14..}] slot.armor.legs 0 aw:diamond_leggings
give @s[scores={temp=14..}] aw:potion_hibernation

tellraw @s[scores={temp=15}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（4-4结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
replaceitem entity @s[scores={temp=15..}] slot.armor.chest 0 aw:diamond_chestplate

tellraw @s[scores={temp=16}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（6-1结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
loot give @s[scores={temp=16..}] loot "bow_with_flame_and_power"

tellraw @s[scores={temp=17}] {"rawtext":[{"translate":"已将盔甲设定更改为%%s（7-1结束后）","with":{"rawtext":[{"score":{"name":"@s","objective":"temp"}}]}}]}
give @s[scores={temp=17}] aw:wild_sword

function lib/supplier/arrow
