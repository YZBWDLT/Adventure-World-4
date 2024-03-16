# ===== 使用虚拟准星后 =====

# --- 清除之 ---
clear @s aw:toggle_wave

# --- 数值操作 ---

## 先获取开发者模式情况
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能无法在非开发者模式下使用"}]}

## 开发者模式启用后执行
execute @s[scores={temp=1}] ~~~ scoreboard players add @e[name=wave] data 1
execute @s[scores={temp=1}] ~~~ scoreboard players set @e[name=wave,scores={data=!1..5}] data 1
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"关卡波数已被更改为%%s","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}
execute @s[scores={temp=1}] ~~~ playsound random.orb @s ~~~

scoreboard players set @s temp 0

# --- 给予之 ---
replaceitem entity @s slot.weapon.mainhand 0 aw:toggle_wave 1 0 {"item_lock":{"mode":"lock_in_inventory"}}