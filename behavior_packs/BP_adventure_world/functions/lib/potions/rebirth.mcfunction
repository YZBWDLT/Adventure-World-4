# ===== 喝下药水 =====
# 当玩家喝下重生药水后，执行的命令

# 调用此方法时：
# · 执行者为喝下重生药水的玩家
# · 执行位置为该玩家的位置
# 输出结果：
# data.potionUsed=1

# --- 施加药效 ---
effect @s weakness 3 4 true
effect @s instant_health 1 9 true

# --- 标记为使用过药水 ---
scoreboard players set potionUsed data 1

# --- 移除标记 ---
clear @s aw:potion_rebirth_marker
