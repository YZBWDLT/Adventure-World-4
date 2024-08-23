# ===== 使用虚拟准星后 =====

# --- 数值操作 ---
scoreboard players set @s[tag=!virtualCrosshairEnabled] temp 0
scoreboard players set @s[tag=virtualCrosshairEnabled] temp 1

tag @s[scores={temp=0}] add virtualCrosshairEnabled
tag @s[scores={temp=1}] remove virtualCrosshairEnabled

tellraw @s[tag=!virtualCrosshairEnabled] {"rawtext":[{"text":"§c已禁用虚拟准星"}]}
tellraw @s[tag=virtualCrosshairEnabled] {"rawtext":[{"text":"§a已启用虚拟准星"}]}
