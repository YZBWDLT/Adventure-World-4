# ===== 下一个成就 =====

scoreboard players remove @e[name=achievement] data 1
scoreboard players set @e[name=achievement,scores={data=!1..13}] data 13
function lib/show_achievements
setblock -25 2 -45 birch_button ["button_pressed_bit":false,"facing_direction":2]
