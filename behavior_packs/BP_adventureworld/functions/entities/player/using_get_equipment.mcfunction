# ===== 使用虚拟准星后 =====

# --- 数值操作 ---

## 先获取开发者模式情况
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能无法在非开发者模式下使用"}]}

## 开发者模式启用后执行
execute @s[scores={temp=1}] ~~~ playsound random.orb @s ~~~
execute @s[scores={temp=1}] ~~~ function settings/get_equipment

scoreboard players set @s temp 0

