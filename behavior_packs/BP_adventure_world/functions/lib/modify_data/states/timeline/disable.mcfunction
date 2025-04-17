# ===== 禁用时间线 =====
# 用于禁用时间线。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 禁用时间线、同时恢复时间流逝的设置。
# · 若data.keepValue（保留时间值参数）不为1，则time.timeline归零。

scoreboard players set timeline active 0
scoreboard players set timeLapse data 0
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
