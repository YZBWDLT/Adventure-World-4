# ===== 使用虚拟准星后 =====

# --- 清除之 ---
clear @s aw:enable_crosshair

# --- 数值操作 ---
scoreboard players set @s[tag=!virtualCrosshairEnabled] temp 0
scoreboard players set @s[tag=virtualCrosshairEnabled] temp 1

tag @s[scores={temp=0}] add virtualCrosshairEnabled
tag @s[scores={temp=1}] remove virtualCrosshairEnabled

tellraw @s[tag=!virtualCrosshairEnabled] {"rawtext":[{"text":"§c已禁用虚拟准星"}]}
tellraw @s[tag=virtualCrosshairEnabled] {"rawtext":[{"text":"§a已启用虚拟准星"}]}

# --- 给予之 ---
replaceitem entity @s slot.weapon.mainhand 0 aw:enable_crosshair 1 0 {"item_lock":{"mode":"lock_in_inventory"}}