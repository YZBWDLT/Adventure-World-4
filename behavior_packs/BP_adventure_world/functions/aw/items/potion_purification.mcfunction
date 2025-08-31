# ===== 喝下药水 =====
# 当玩家喝下净化药水后，执行的命令

# --- 施加药效 ---
effect @s absorption 60 2 true
effect @s poison 0 10 true

# --- 标记为使用过药水 ---
scoreboard players set potionUsed data 1
