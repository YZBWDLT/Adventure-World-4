# ===== 剧情：巴豆 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a巴豆（Andy7343）： §7虽然地图质量远超我的预期，还拉了这么多人参与，但拖这么长时间真是抱歉，以后我一定会尽量避免的。§8(1/3)"}]}
    execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a巴豆（Andy7343）： §7一开始只是想找量筒来帮个忙......但最后他负责的内容是最多的，所有指令都是他写的。§8(2/3)"}]}
    execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"* §a巴豆（Andy7343）： §7我猜你没玩过以前的冒险世界系列作品吧？在资源中心点开作者页面就能看到了，虽然装饰很简陋，但内容我还是有信心的。§8(3/3)"}]}

    execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=1,aw:animation="none"}] aw:animation_speak
    execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=1,aw:animation="none"}] aw:animation_speak
    execute if score timeline time matches 120 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=1,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
    execute if score timeline time matches 121.. run scoreboard players set timeline active 1
    execute if score timeline time matches 121.. run function aw/lib/modify_data/timeline/disable_time_lapse
