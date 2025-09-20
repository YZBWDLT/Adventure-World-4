# ===== 喝下药水 =====
# 当玩家喝下休眠药水后，执行的命令

# --- 施加药效 ---
effect @s regeneration 15 3 true
effect @s slowness 3 3 true

# --- 标记为使用过药水 ---
execute if score isSingleLevel data matches 0 run scoreboard players set potionUsed data 1
