# ===== 按下按钮：下一个成就 =====

scoreboard players add temp.achievementPage data 1
execute if score temp.achievementPage data matches 14.. run scoreboard players set temp.achievementPage data 1
function aw/levels/end/stage2/events/show_achievement
setblock -29 2 -45 birch_button ["facing_direction"=2,"button_pressed_bit"=false]
