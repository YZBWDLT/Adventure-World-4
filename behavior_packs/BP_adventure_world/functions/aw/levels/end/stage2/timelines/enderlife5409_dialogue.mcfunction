# ===== 剧情：千里 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a千里（EnderLife5409）： §7你的经历会被记载在某张羊皮纸上，其中所记载的一切将永远不会重现，但在世界另一角，溺尸嘶吼着又拾起了三叉戟，另一个冒险世界，风云再起！"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 2 run scoreboard players set timeline active 1
    execute if score timeline time matches 2 run function aw/lib/modify_data/states/timeline/disable_time_lapse
