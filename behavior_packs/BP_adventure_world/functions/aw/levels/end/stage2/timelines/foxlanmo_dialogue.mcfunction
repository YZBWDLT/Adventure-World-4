# ===== 剧情：风暴 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a风暴（FoxLanMo）： §7可恶，量筒地图怎么这么难……哼哼哼啊啊啊啊啊啊啊啊（尖叫）（扭曲）（阴暗地爬行）§8[原文如此]"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 2 run scoreboard players set timeline active 1
    execute if score timeline time matches 2 run function aw/lib/modify_data/states/timeline/disable_time_lapse
