# ===== 使用虚拟准星后 =====

# --- 清除之 ---
clear @s aw:kill_monsters

# --- 数值操作 ---

## 先获取开发者模式情况
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能无法在非开发者模式下使用"}]}

## 开发者模式启用后执行
execute @s[scores={temp=1}] ~~~ kill @e[family=monster]
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"已清除所有怪物"}]}
execute @s[scores={temp=1}] ~~~ playsound random.orb @s ~~~

scoreboard players set @s temp 0

# --- 给予之 ---
replaceitem entity @s slot.weapon.mainhand 0 aw:kill_monsters 1 0 {"item_lock":{"mode":"lock_in_inventory"}}