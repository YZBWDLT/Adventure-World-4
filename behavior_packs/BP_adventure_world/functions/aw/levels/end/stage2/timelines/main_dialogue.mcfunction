# ===== 剧情：主线 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7云儿，对了，之前红石神殿的事......"}]}
    execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7别问我，你自己去你家楼下看嘛！我要说的都在那儿了哦。"}]}
    execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7好吧......qwq"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 301.. run scoreboard players set timeline active 1
    execute if score timeline time matches 301.. run function aw/lib/modify_data/timeline/disable_time_lapse
