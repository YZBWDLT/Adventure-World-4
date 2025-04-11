# ===== 喝下药水 =====
# 当玩家喝下休眠药水后，执行的命令

# 调用此方法时：
# · 执行者为喝下休眠药水的玩家
# · 执行位置为该玩家的位置
# 输出结果：
# data.potionUsed=1

# --- 施加药效 ---
effect @s regeneration 15 3 true
effect @s slowness 3 3 true

# --- 标记为使用过药水 ---
scoreboard players set potionUsed data 1

# --- 移除标记 ---
clear @s aw:potion_hibernation_marker
