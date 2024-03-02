# ===== 使用虚拟准星后 =====

# --- 清除之 ---
clear @s aw:enable_crosshair

# --- 数值操作 ---
scoreboard players add @s crosshair 1
scoreboard players set @s[scores={crosshair=2}] crosshair 0

tellraw @s[scores={crosshair=0}] {"rawtext":[{"text":"§c已禁用虚拟准星"}]}
tellraw @s[scores={crosshair=1}] {"rawtext":[{"text":"§a已启用虚拟准星"}]}

# --- 给予之 ---
replaceitem entity @s slot.weapon.mainhand 0 aw:enable_crosshair 1 0 {"item_lock":{"mode":"lock_in_inventory"}}