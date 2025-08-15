# ===== 剧情：帕 =====

# --- 若未启用时间流逝，则启用 ---
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---
    ## 单人模式
        ### C~S 级
            #### 难度 1（分为一命和非一命）
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60.. if score difficulty settings matches 1 run tellraw @a[scores={deathCount=0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜，你的PVE技术合格啦~"}]}
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60.. if score difficulty settings matches 1 run tellraw @a[scores={deathCount=!0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜你通过此次试炼！可以的话尝试考虑更高的难度吧！"}]}
            #### 难度 2~3
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60.. if score difficulty settings matches 2..3 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜你通过此次试炼！可以的话尝试考虑更高的难度吧！"}]}
            #### 难度 4（分为一命和非一命，和F~D级内容相同）
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60.. if score difficulty settings matches 4 run tellraw @a[scores={deathCount=0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7能看到这段对话的人应该很少吧（？）厉害哒！相信你已经可以秒杀绝大部分的pve地图了awa（在7-5出来之前我甚至还设置了四级难度一命无药通关的特殊对话，可是这个用手机打出来非常难，所以放弃了qwq）"}]}
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 60.. if score difficulty settings matches 4 run tellraw @a[scores={deathCount=!0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7你的技术已经超过很多人了，要不要试一下0死亡嘛嘿嘿~~~"}]}
        ### F~D 级
            #### 难度 1~3
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..59 if score difficulty settings matches 1..3 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7不必灰心，游戏就是为了开心嘛，如果嫌弃自己菜的话，多练一练就好啦，相信你也可以成为大佬的，加油！"}]} 
            #### 难度 4（分为一命和非一命，和C~S级内容相同）
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..59 if score difficulty settings matches 4 run tellraw @a[scores={deathCount=0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7能看到这段对话的人应该很少吧（？）厉害哒！相信你已经可以秒杀绝大部分的pve地图了awa（在7-5出来之前我甚至还设置了四级难度一命无药通关的特殊对话，可是这个用手机打出来非常难，所以放弃了qwq）"}]}
                execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches 0..59 if score difficulty settings matches 4 run tellraw @a[scores={deathCount=!0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7你的技术已经超过很多人了，要不要试一下0死亡嘛嘿嘿~~~"}]}
        ### F- 级
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches -1 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7我把这张地图单人通关1、2级的难度划分为下级，3级为中下级，4级才为中上级。虽然难度没有达到我认为的上级的水准，但这于小白来说也许还是很难，不过多练练总能打出来的，所以下次试试不开创造吧，加油！"}]}
        ### 无评价
            execute if score timeline time matches 1 if score playerAmount data matches 1 if score score record matches -2 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7和朋友玩的开心么？希望你们的友谊可以一直持续下去~ awa"}]}
    ## 多人模式
        ### 一命（失败次数为 0）
            execute if score timeline time matches 1 if score playerAmount data matches 2.. if score failedCount.allLevels data matches 0 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7你们配合的很默契诶，厉害！"}]}
        ### 非一命（失败次数不为 0）
            execute if score timeline time matches 1 if score playerAmount data matches 2.. unless score failedCount.allLevels data matches 0 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7和朋友玩的开心么？希望你们的友谊可以一直持续下去~ awa"}]}

# --- 剧情结束 ---
    execute if score timeline time matches 2 run scoreboard players set timeline active 1
    execute if score timeline time matches 2 run function aw/lib/modify_data/timeline/disable_time_lapse
