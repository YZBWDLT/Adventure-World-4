# ===== 启用时间线 =====
# 用于启用时间线。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用时间线。
# · time.timeline归零。

scoreboard players set timeline active 1
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
