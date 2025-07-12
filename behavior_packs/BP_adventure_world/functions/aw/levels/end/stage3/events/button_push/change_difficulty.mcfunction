# ===== 按下按钮：更改难度 =====

# --- 变量设置 ---
    ## 添加额外地图难度，并控制在 -3~3 之间
        scoreboard players add temp.extraDifficulty settings 1
        execute if score temp.extraDifficulty settings matches !-3..3 run scoreboard players set temp.extraDifficulty settings -3
# --- 设置文本展示实体 ---
    function aw/levels/end/stage3/events/show_difficulty
# --- 恢复按钮 ---
    setblock -13 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=false]
