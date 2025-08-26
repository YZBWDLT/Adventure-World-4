# ===== 剧情：比翼鸟 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    ## 单人模式
        ### S 级
            #### 难度 1
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 120.. if score difficulty settings matches 1 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7感谢你的努力~接下来向着更高的目标进发如何呢~？§8(1/3)"}]}
            #### 难度 2~3
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 120.. if score difficulty settings matches 2..3 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7很厉害呢！时间和成绩会奖励努力的你！§8(1/3)"}]}
            #### 难度 4
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 120.. if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7真是难以置信......你就是上古的林乐本人吧？§8(1/3)"}]}
            execute if score timeline time matches 60 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7我已经没有更高的评价能称赞你了，谢谢你体验我们的地图！§8(2/3)"}]}
            execute if score timeline time matches 120 if score playerAmount data matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7对了，我和巴豆学长的文案不知你们满不满意呢~？也欢迎大家体验冒险世界系列主线^w^~！§8(3/3)"}]}
        ### C~A 级
            #### 难度 1
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60..119 if score difficulty settings matches 1 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7感谢你的努力~接下来向着更高的目标进发如何呢~？§8(1/2)"}]}
            #### 难度 2~3
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60..119 if score difficulty settings matches 2..3 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7很厉害呢！时间和成绩会奖励努力的你！§8(1/2)"}]}
            #### 难度 4
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60..119 if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7真是难以置信......你就是上古的林乐本人吧？§8(1/2)"}]}
            execute if score timeline time matches 60 if score playerAmount data matches 1 if score score record matches 60..119 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7对了，我和巴豆学长的文案不知你们满不满意呢~？也欢迎大家体验冒险世界系列主线^w^~！§8(2/2)"}]}
        ### F~D 级
            #### 难度 1
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..59 if score difficulty settings matches 1 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7感谢你的努力~接下来向着更高的目标进发如何呢~？§8(1/3)"}]}
            #### 难度 2~3
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..59 if score difficulty settings matches 2..3 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7很厉害呢！时间和成绩会奖励努力的你！§8(1/3)"}]}
            #### 难度 4
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..59 if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7真是难以置信......你就是上古的林乐本人吧？§8(1/3)"}]}
            execute if score timeline time matches 60 if score playerAmount data matches 1 if score score record matches 0..59 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7没关系的，能走到这里已经是很了不起的了，不用管小鼠的反应~§8(2/3)"}]}
            execute if score timeline time matches 120 if score playerAmount data matches 1 if score score record matches 0..59 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7对了，我和巴豆学长的文案不知你们满不满意呢~？也欢迎大家体验冒险世界系列主线^w^~！§8(3/3)"}]}
        ### F- 级
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches -1 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7太难了吗？没事的，多练一练，下次争取不用创造~"}]}
        ### 无评价
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches -2 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7坚定不移地保持这样的友谊吧，希望在远方的新战场也能看到你们的英姿！"}]}
    ## 多人模式
        ### 难度 1
            execute if score timeline time matches 1 if score playerAmount data matches 2.. if score difficulty settings matches 1 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7有勇无谋难成大事，智勇双全方为英雄。这句话送给你们或许正好哦。"}]}
        ### 难度 2~3
            execute if score timeline time matches 1 if score playerAmount data matches 2.. if score difficulty settings matches 2..3 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7坚定不移地保持这样的友谊吧，希望在远方的新战场也能看到你们的英姿！"}]}
        ### 难度 4
            execute if score timeline time matches 1 if score playerAmount data matches 2.. if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7出神入化......出神入化......这样的默契我想真的是世上难得的了！"}]}

    execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=9,aw:animation="none"}] aw:animation_speak
    execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=9,aw:animation="none"}] aw:animation_speak
    execute if score timeline time matches 120 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=9,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
    ## 单人模式
        ## 非 F- 级：维持 120 刻
            execute if score playerAmount data matches 1 if score score record matches 0.. if score timeline time matches 121 run scoreboard players set timeline active 1
            execute if score playerAmount data matches 1 if score score record matches 0.. if score timeline time matches 121 run function aw/lib/modify_data/timeline/disable_time_lapse
        ## F- 级或无评价：维持 1 刻
            execute if score playerAmount data matches 1 if score score record matches ..-1 if score timeline time matches 2 run scoreboard players set timeline active 1
            execute if score playerAmount data matches 1 if score score record matches ..-1 if score timeline time matches 2 run function aw/lib/modify_data/timeline/disable_time_lapse
    ## 多人模式：维持 1 刻
        execute if score playerAmount data matches 2.. if score timeline time matches 2 run scoreboard players set timeline active 1
        execute if score playerAmount data matches 2.. if score timeline time matches 2 run function aw/lib/modify_data/timeline/disable_time_lapse
