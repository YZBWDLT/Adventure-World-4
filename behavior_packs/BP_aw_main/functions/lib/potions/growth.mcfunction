# ===== 喝下药水 =====
# 当玩家喝下生长药水后，执行的命令

# 调用此方法时：
# · 执行者为喝下生长药水的玩家
# · 执行位置为该玩家的位置
# 输出结果：
# data.potionUsed=1

# --- 施加药效 ---
effect @s health_boost 1200 4 true
effect @s regeneration 1200 0 true
effect @s weakness 1200 0 true
effect @s instant_health 1 1 true

# --- 移除另外两种主药水 ---
clear @s aw:potion_thrill
clear @s aw:potion_turtle
playsound random.glass @s

# --- 标记为使用过药水 ---
scoreboard players set potionUsed data 1

# --- 移除标记 ---
clear @s aw:potion_growth_marker
