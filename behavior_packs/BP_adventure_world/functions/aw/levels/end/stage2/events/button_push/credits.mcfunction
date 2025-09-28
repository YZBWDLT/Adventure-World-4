# ===== 按下按钮：制作人名单 =====

scoreboard players add temp.creditPage data 1
execute if score temp.creditPage data matches 14.. run scoreboard players set temp.creditPage data 0
function aw/levels/end/stage2/events/show_credits
setblock -25 7 -51 birch_button ["facing_direction"=1,"button_pressed_bit"=false]
