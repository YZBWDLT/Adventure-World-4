# ===== 强制生成怪物 =====
# 调用本函数以人为启用/禁用强制生成怪物

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}
scoreboard players set @s temp 0

## --- 开启开发者模式时 ---
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players add @e[name=shouldForceSummonMonster] active 1
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @e[name=shouldForceSummonMonster,scores={active=!0..1}] active 0

execute @e[name=shouldForceSummonMonster,scores={active=0}] ~~~ tellraw @a {"rawtext":[{"translate":"强制生成怪物已禁用"}]}
execute @e[name=shouldForceSummonMonster,scores={active=1}] ~~~ tellraw @a {"rawtext":[{"translate":"§e强制生成怪物已启用，部分功能可能会失效"}]}
