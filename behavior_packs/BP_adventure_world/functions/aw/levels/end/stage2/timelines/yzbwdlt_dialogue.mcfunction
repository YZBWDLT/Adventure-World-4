# ===== 剧情：量筒 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7感谢你游玩此地图！不知道你对这个地图满不满意呢？§8(1/3)"}]}
    execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7这张地图耗费了我们巨大的心血，说来有意思，我们本来一开始并没有打算做的这么大，后来东西越塞越多，搞成了这个样子......耗时也是超过了一年qwq§8(2/3)"}]}
    execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7遇到问题欢迎来我们的测试群讨论：\n673941729\n！最后再次感谢你的游玩~！§8(3/3)"}]}

    execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak
    execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak
    execute if score timeline time matches 120 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
    execute if score timeline time matches 121 run scoreboard players set timeline active 1
    execute if score timeline time matches 121 run function aw/lib/modify_data/timeline/disable_time_lapse
