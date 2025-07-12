# ===== 剧情：鸽子 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a鸽子（PigeonKI）： §7巴豆、量筒和绿叶的配合超级有默契的！有可能的话，我很希望他们能多多合作awa§8(1/2)"}]}
    execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a鸽子（PigeonKI）： §7偷偷告诉你哟，作者们都是鸽子，7-5的制作拖了一年呢=p§8(2/2)"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 61 run scoreboard players set timeline active 1
    execute if score timeline time matches 61 run function aw/lib/modify_data/states/timeline/disable_time_lapse
