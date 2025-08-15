# ===== 剧情：蒙德人 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a蒙德人（Tuffy2020China）： §7哎呦？不错哦！居然通关了？汗流浃背了吧，牢弟！小…猫？（喜欢吗？）喜欢就快催量老师和大佬们更新地图吧！"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 2 run scoreboard players set timeline active 1
    execute if score timeline time matches 2 run function aw/lib/modify_data/timeline/disable_time_lapse
