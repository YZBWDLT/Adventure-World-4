# 进行游戏初始化

function init/gamerule
function init/data_init

gamemode adventure @a
tp @a 43 21 132
clear @a
setworldspawn 43 21 132

kill @e[type=aw:text_display]
summon aw:text_display "§l§6开 始 游 戏" 44 29 86
setblock 44 26 86 minecraft:beacon
tag @a add alive
time set 6000