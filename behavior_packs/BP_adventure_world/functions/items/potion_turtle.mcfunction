# ===== 喝下药水 =====
# 当玩家喝下神龟药水后，执行的命令

# 调用此方法时：
# · 执行者为喝下神龟药水的玩家
# · 执行位置为该玩家的位置
# 输出结果：
# data.potionUsed=1

# --- 施加药效 ---
effect @s resistance 1200 2 true
effect @s absorption 1200 1 true
effect @s slowness 1200 1 true

# --- 移除另外两种主药水 ---
clear @s aw:potion_growth
clear @s aw:potion_thrill
playsound random.glass @s

# --- 标记为使用过药水 ---
scoreboard players set potionUsed data 1
