# 开发者模式

scoreboard players set @e[name=developerMode] active 0
function developer/gamerule
tellraw @a {"rawtext":[{"text":"§a已退出开发模式！"}]}