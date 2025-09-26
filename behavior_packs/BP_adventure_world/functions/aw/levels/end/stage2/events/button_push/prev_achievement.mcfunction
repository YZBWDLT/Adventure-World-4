# ===== 按下按钮：上一个成就 =====

scoreboard players remove temp.achievementPage data 1
execute if score temp.achievementPage data matches ..0 run scoreboard players set temp.achievementPage data 24
function aw/levels/end/stage2/events/show_achievement
setblock -25 2 -45 birch_button ["facing_direction"=2,"button_pressed_bit"=false]
