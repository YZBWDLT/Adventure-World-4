# ===== 按下按钮：上一关 =====

# --- 变量设置 ---
    scoreboard players remove temp.level settings 1
    execute if score temp.level settings matches !0..23 run scoreboard players set temp.level settings 23
# --- 设置文本展示实体 ---
    function aw/levels/end/stage3/events/show_level
# --- 恢复按钮 ---
    setblock -18 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=false]
