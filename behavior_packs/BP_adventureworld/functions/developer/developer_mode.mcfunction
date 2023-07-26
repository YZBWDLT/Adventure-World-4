# 开发者模式

function init/markers
scoreboard players set @e[name=developerMode] active 1
function developer/gamerule
kill @e[name=readyToStart]
tellraw @a {"rawtext":[{"text":"§c已进入开发模式！\n手持末影珍珠将进入旁观模式。"}]}