# ===== 启用时间线 =====
# 启用时间线（状态为1）。如果未指定为保持时间值的话，则还将时间值归零。
# 调用此方法时：无需修饰。

scoreboard players set timeline active 1
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
