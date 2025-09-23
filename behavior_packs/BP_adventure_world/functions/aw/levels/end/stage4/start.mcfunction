# ===== 开始关卡 =====
# 10-4 | 开始单关卡试炼

# 设置关卡 ID
    scoreboard players set level data 4

# 调用通用函数
    function aw/lib/events/levels/start_open

# 给玩家黑屏并隐身
    effect @a invisibility 3600 0 true
    camera @a fade time 1 2 1

# 关卡参数设置

    ## 设置为单关卡试炼
        scoreboard players set isSingleLevel data 1
    ## 撤销玩家的主动旁观
        scoreboard players set @a spectator 0
    ## 阻止在关卡额外传送玩家
        scoreboard players set allowTpPlayerWhenStart data 0
    ## 将失败次数归零
        scoreboard players set failedCount.thisLevel data 0
    ## 应用 stage3 的设置变量，并销毁临时变量
        scoreboard players operation extraDifficulty settings = temp.extraDifficulty settings
        scoreboard players reset temp.extraDifficulty settings
        scoreboard players operation storyMode settings = temp.storyMode settings
        scoreboard players reset temp.storyMode settings
