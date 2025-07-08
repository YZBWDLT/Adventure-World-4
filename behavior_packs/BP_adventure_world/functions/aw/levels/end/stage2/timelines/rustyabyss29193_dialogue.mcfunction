# ===== 剧情：烟雨 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a烟雨（RustyAbyss29193）： §7恭喜通关，充满决心的冒险家。"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 2 run scoreboard players set timeline active 1
    execute if score timeline time matches 2 run function aw/lib/modify_data/states/timeline/disable_time_lapse
