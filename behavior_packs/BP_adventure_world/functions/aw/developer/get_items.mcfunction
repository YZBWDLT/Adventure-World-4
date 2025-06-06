# ===== 获取物品 =====
# 用于获取辅助物品，仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

## 提示玩家
execute if score developerMode settings matches 1 if entity @s[m=creative] run tellraw @s {"rawtext":[{"translate":"已获取开发者物品"}]}

## 给予物品
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s netherite_sword
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s command_block
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s chain_command_block
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s repeating_command_block
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s barrier
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s border_block
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s structure_block
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s structure_void
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s light_block 1 15
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s allow
execute if score developerMode settings matches 1 if entity @s[m=creative] run give @s deny
