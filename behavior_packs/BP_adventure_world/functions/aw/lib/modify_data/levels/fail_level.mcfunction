# ===== 关卡失败通用函数 =====
# 试炼中关卡通用的内容。用于在关卡失败时调用。
# 调用此方法时：需修饰执行位置为该关重生点位置（execute positioned (本关重生点)）。

# --- 关卡参数 ---
    ## 回退当前关卡数
        scoreboard players remove level data 1
    ## 当前关卡完成状态
        scoreboard players set levelCompleted data 1
    ## 设置为可恢复药水
        tag @a add supplyAllPotions
    ## 设置为可恢复箭
        tag @a add supplyArrow
    ## 时间线
        function aw/lib/modify_data/states/timeline/dont_keep_value
        function aw/lib/modify_data/states/timeline/enable
    ## 增加失败次数
        scoreboard players add failedCount.allLevels data 1
        scoreboard players add failedCount.thisLevel data 1
    ## 重置关卡完成倒计时
        scoreboard players set levelCompleteCountdown time 0

# --- 玩家 ---
    ## 标题
        titleraw @a times 0 100 0
        titleraw @a title {"rawtext":[{"translate":"§c§l关 卡 失 败"}]}
        titleraw @a subtitle {"rawtext":[{"translate":"所有人已死亡！已返回上一个重生点。"}]}
    ## 音效
        function aw/lib/modify_data/states/sound/random_anvil_break_0_75
    ## 复活已死亡玩家到重生点
        execute as @a[tag=spectator] run function aw/lib/events/respawn_player
    ## 回血
        effect @a clear
        effect @a instant_health 1 20 true
    ## 如果失败次数达到一定次数，进行通知
        execute if score failedCount.thisLevel data matches 3 run tellraw @a {"rawtext":[{"text":"§7你（们）已经失败3次了！下一次进入关卡时将给予力量II效果。"}]}
        execute if score failedCount.thisLevel data matches 5 run tellraw @a {"rawtext":[{"text":"§7你（们）已经失败5次了！下一次进入关卡时将给予力量II、生命提升V和抗性提升I效果。"}]}
        execute if score failedCount.thisLevel data matches 10 run tellraw @a {"rawtext":[{"text":"§7你（们）已经失败10次了！下一次进入关卡时将给予力量II、生命提升V和抗性提升V效果。"}]}

# --- 清除多余实体 ---
    kill @e[family=monster]
    kill @e[type=aw:wind_pearl]
    event entity @e[type=aw:spawner] aw:remove_immediately
