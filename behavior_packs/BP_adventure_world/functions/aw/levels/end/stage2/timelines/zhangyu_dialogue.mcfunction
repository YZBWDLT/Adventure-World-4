# ===== 剧情：张宇 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    ## 进入剧情
    execute if score timeline time matches 1 run function aw/lib/events/start_dialogue_keep
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7你要再来一次试炼吗？"}]}

# --- 触发 stage3 的重开阶段 ---
    execute if score timeline time matches 50 run camera @a fade time 1 3 1

# --- 剧情结束 ---
    execute if score timeline time matches 100 run function aw/levels/end/stage2/complete
