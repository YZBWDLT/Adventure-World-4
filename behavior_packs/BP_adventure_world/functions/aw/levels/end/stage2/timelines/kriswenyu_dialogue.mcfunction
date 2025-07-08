# ===== 剧情：文雨 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/enable_time_lapse

# --- 剧情 ---
    ## 单人模式时
        ### S 级
            execute if score timeline time matches 60 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7哇！P......PVE大佬！我见到大佬了！......膜拜大佬！§8(1/2)"}]}
            execute if score timeline time matches 120 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7大佬喜欢咱画的贴图嘛！§8(2/2)"}]}
        ### F~A 级
            execute if score timeline time matches 60 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7经过这么长时间的战斗你一定累了吧，给你一个毛绒拥抱！§8(1/2)"}]}
            execute if score timeline time matches 120 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7喜欢咱画的贴图吗？§8(2/2)"}]}
        ### F- 级
            execute if score timeline time matches 60 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7你作弊了？不能吧......§8(1/2)"}]}
            execute if score timeline time matches 120 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7喜欢咱画的贴图吗？§8(2/2)"}]}
    ## 多人模式时
        execute if score timeline time matches 60 if score playerAmount data matches 2.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7经过这么长时间的战斗你一定累了吧，给你一个毛绒拥抱！§8(1/2)"}]}
        execute if score timeline time matches 120 if score playerAmount data matches 2.. run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7喜欢咱画的贴图吗？§8(2/2)"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 121 run scoreboard players set timeline active 1
    execute if score timeline time matches 121 run function aw/lib/modify_data/states/timeline/disable_time_lapse
