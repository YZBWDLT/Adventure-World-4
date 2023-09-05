# 启用/禁用开发模式

scoreboard players add @e[name=developerMode] settings 1
execute @e[name=developerMode,scores={settings=2}] ~~~ scoreboard players set @e[name=developerMode] settings 0

execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"已关闭开发者模式"}]}
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a ender_pearl
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a netherbrick
execute @e[name=developerMode,scores={settings=0}] ~~~ function init/gamerule

execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"已开启开发者模式"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ gamemode creative @a
execute @e[name=developerMode,scores={settings=1}] ~~~ function developer/gamerule