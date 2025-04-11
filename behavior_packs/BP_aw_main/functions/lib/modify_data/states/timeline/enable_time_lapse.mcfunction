# ===== 启用时间线流逝 =====

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 如果未启用时间线，则启用时间线。
# · 启用时间线的时间流逝。
# · 将时间线的时间值归零。

execute if score timeline active matches ..0 run scoreboard players set timeline active 1
scoreboard players set timeLapse data 1
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
