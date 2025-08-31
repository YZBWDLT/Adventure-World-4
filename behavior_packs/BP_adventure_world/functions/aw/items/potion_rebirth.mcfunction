# ===== 喝下药水 =====
# 当玩家喝下重生药水后，执行的命令

# --- 施加药效 ---
effect @s weakness 3 4 true
effect @s instant_health 1 9 true

# --- 标记为使用过药水 ---
scoreboard players set potionUsed data 1
