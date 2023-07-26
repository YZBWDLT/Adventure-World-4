scoreboard players add @s crosshair 1
scoreboard players set @s[scores={crosshair=2}] crosshair 0

tellraw @s[scores={crosshair=0}] {"rawtext":[{"text":"§c已禁用虚拟准星"}]}
tellraw @s[scores={crosshair=1}] {"rawtext":[{"text":"§a已启用虚拟准星"}]}