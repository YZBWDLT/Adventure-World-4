# ===== 启用时间线 =====
# 启用时间线（仅当未启用时间线时设置状态为1）。如果未指定为保持时间值的话，则还将时间值归零。
# 调用此方法时：无需修饰。

execute if score timeline active matches ..0 run scoreboard players set timeline active 1
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
