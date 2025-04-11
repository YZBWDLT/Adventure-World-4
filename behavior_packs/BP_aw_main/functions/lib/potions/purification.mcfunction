# ===== 喝下药水 =====
# 当玩家喝下净化药水后，执行的命令

# 调用此方法时：
# · 执行者为喝下净化药水的玩家
# · 执行位置为该玩家的位置
# 输出结果：
# data.potionUsed=1

# --- 施加药效 ---
effect @s absorption 60 2 true
effect @s poison 0 10 true

# --- 标记为使用过药水 ---
scoreboard players set potionUsed data 1

# --- 移除标记 ---
clear @s aw:potion_purification_marker
