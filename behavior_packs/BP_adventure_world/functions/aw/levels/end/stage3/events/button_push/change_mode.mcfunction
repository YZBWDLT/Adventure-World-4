# ===== 按下按钮：更改模式 =====

# --- 变量设置 ---
    ## 添加额外地图难度，并控制在 -3~3 之间
        scoreboard players add temp.storyMode settings 1
        execute if score temp.storyMode settings matches !0..1 run scoreboard players set temp.storyMode settings 0
# --- 设置文本展示实体 ---
    function aw/levels/end/stage3/events/show_mode
# --- 恢复按钮 ---
    setblock -18 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=false]
