# ===== 剧情：星辰 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/enable_time_lapse

# --- 剧情 ---
    ## 单人模式
        ### E~S 级
            #### 难度 1~3
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 40.. if score difficulty settings matches 1..3 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7期待你通关最高难度的那一刻。"}]}
            #### 难度 4（分为一命和非一命）
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 40.. if score difficulty settings matches 4 run tellraw @a[scores={deathCount=!0}] {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7要不要挑战一下一命通关难度4呢？"}]}
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 40.. if score difficulty settings matches 4 run tellraw @a[scores={deathCount=0}] {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7你真的做到了......（震惊"}]}
        ### F 级
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..39 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7能坚持玩完已经很不错了呢，继续加油吧！"}]}
        ### F- 级
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches -1 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7看来还得多练习一下呢~"}]}
    ## 多人模式
        execute if score timeline time matches 1 if score playerAmount data matches 2.. run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7期待你通关最高难度的那一刻。"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 2 run scoreboard players set timeline active 1
    execute if score timeline time matches 2 run function aw/lib/modify_data/states/timeline/disable_time_lapse
