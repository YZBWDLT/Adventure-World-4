# ===== 剧情：南瓜汁 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/enable_time_lapse

# --- 剧情 ---
    ## 单人模式
        ### C~S 级或无评价
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60.. run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁为比他 PVE 更强的玩家而骄傲。）"}]}
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches -2 run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁为比他 PVE 更强的玩家而骄傲。）"}]}
        ### F~D 级
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..59 run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁终于找到了和他 PVE 水平相当的玩家，并拍了拍以示安慰。）"}]}
        ### F- 级
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches -1 run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（一个秘密，南瓜汁喜欢在测试时用玉米加农炮轰炸伽刚特尔。）"}]}
    ## 多人模式
        execute if score timeline time matches 1 if score playerAmount data matches 2.. run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁为比他 PVE 更强的玩家而骄傲。）"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 2 run scoreboard players set timeline active 1
    execute if score timeline time matches 2 run function aw/lib/modify_data/states/timeline/disable_time_lapse
