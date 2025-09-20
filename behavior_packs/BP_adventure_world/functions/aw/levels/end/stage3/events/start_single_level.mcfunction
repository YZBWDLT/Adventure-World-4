# ===== 开始单关卡试炼 =====

# 设置为单关卡试炼
    scoreboard players set isSingleLevel data 1

# 进入单关卡试炼的时间线
    scoreboard players set timeline active 2
    function aw/lib/modify_data/timeline/enable_time_lapse

# 给玩家黑屏
    camera @a fade time 1 2 1

# 阻止在关卡额外传送玩家
    scoreboard players set allowTpPlayerWhenStart data 0

# 将失败次数归零
    scoreboard players set failedCount.thisLevel data 0
