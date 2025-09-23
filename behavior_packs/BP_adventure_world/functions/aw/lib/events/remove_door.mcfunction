# ===== 移除门 =====
# 安全地将门打开后移除。
# 调用此方法时：需指定为要移除的门（execute as @e[type=aw:door] at @s run）。

fill ~-3~~-3~3~4~3 structure_void replace barrier
event entity @s aw:remove_immediately
