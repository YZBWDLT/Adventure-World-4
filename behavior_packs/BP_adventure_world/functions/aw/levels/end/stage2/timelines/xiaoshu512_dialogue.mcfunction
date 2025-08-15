# ===== 剧情：小鼠 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    ## 单人模式
        ### 难度 1~3
            #### C~S 级或无评价
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score difficulty settings matches 1..3 if score score record matches 60.. run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7还想坐牢的话尝试去把所有的成就都完成了罢awa"}]}
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score difficulty settings matches 1..3 if score score record matches -2 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7还想坐牢的话尝试去把所有的成就都完成了罢awa"}]}
            #### F~D 级
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score difficulty settings matches 1..3 if score score record matches 0..59 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7可恶，你的评分怎么这么低......哼哼哼啊啊啊啊啊啊啊！§8[原文如此]"}]}
            #### F- 级
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score difficulty settings matches 1..3 if score score record matches -1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7啥？你居然作弊了？？嗯......没关系的，多练习下迟早不需要作弊的，期待你能够无作弊通关噢~"}]}
        ### 难度 4
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7五瓦！你做到了！！你真的做到了！！！§8(1/3)"}]}
            execute if score timeline time matches 60 if score playerAmount data matches 1 if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7没想到真的会有人去尝逝挑战这么坐牢的模式（悲）§8(2/3)"}]}
            execute if score timeline time matches 120 if score playerAmount data matches 1 if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7感谢你费心游玩此图！喜欢这地图的话不妨多多支持下awa§8(3/3)"}]}
    ## 多人模式
        ### 难度 1~3
            execute if score timeline time matches 1 if score playerAmount data matches 2.. if score difficulty settings matches 1..3 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7还想坐牢的话尝试去把所有的成就都完成了罢awa"}]}
        ### 难度 4
            execute if score timeline time matches 1 if score playerAmount data matches 2.. if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7恭喜！大佬们的配合相当不错（喜）§8(1/3)"}]}
            execute if score timeline time matches 60 if score playerAmount data matches 2.. if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7不知道这难度对你们来说是洒洒水还是汗流浃背awa§8(2/3)"}]}
            execute if score timeline time matches 120 if score playerAmount data matches 2.. if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7一起期待下一部作品吧！咕咕咕咕咕咕§8(3/3)"}]}

# --- 剧情结束 ---
    ## 难度 1~3：维持 1 刻
        execute if score timeline time matches 2 if score difficulty settings matches 1..3 run scoreboard players set timeline active 1
        execute if score timeline time matches 2 if score difficulty settings matches 1..3 run function aw/lib/modify_data/timeline/disable_time_lapse
    ## 难度 4：维持 120 刻
        execute if score timeline time matches 121 if score difficulty settings matches 4 run scoreboard players set timeline active 1
        execute if score timeline time matches 121 if score difficulty settings matches 4 run function aw/lib/modify_data/timeline/disable_time_lapse
