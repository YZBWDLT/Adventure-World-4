# ===== 物品上限函数检测 =====
# 调用本函数以人为启用/禁用物品上限检测

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}
scoreboard players set @s temp 0

## --- 开启开发者模式时 ---
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players add @e[name=itemLimitTest] settings 1
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @e[name=itemLimitTest,scores={settings=!0..1}] settings 0

execute @e[name=itemLimitTest,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"§e物品上限检测已禁用，部分功能可能会失效"}]}
execute @e[name=itemLimitTest,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"物品上限检测已启用"}]}
