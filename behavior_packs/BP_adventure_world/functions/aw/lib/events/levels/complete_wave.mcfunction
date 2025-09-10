# ===== 怪物波潮结束通用函数 =====
# 试炼中怪物波潮通用的内容。用于在怪物波潮结束时调用。
# 调用此方法时：需修饰执行位置为该关重生点位置（execute positioned (本关重生点)）。

# --- 关卡参数 ---
    ## 波数
        scoreboard players add wave data 1
    ## 补充箭
        tag @a add supplyArrow
    ## 重置关卡完成倒计时
        scoreboard players set levelCompleteCountdown time 0

# --- 提示玩家进入第 X 波 ---
    function aw/lib/events/show_empty_title
    titleraw @a subtitle {"rawtext":[{"translate":"第 §a%%s §f波","with":{"rawtext":[{"score":{"objective":"data","name":"wave"}}]}}]}

# --- 释放玩家 ---
    ## 给予玩家额外的治疗药水
        give @a[tag=spectator] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
        tellraw @a[tag=spectator] {"rawtext":[{"translate":"§7您已被释放并给予一瓶治疗药水，注意安全！"}]}
    ## 复活旁观玩家
        execute as @a[tag=spectator] run function aw/lib/events/respawn_player
