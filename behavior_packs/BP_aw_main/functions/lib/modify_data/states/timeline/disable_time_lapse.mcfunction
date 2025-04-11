# ===== 禁用时间线流逝 =====

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 禁用时间线的时间流逝。
# · 将时间线的时间值归零。

scoreboard players set timeLapse data 0
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
