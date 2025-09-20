# ===== 喝下药水 =====
# 当玩家喝下亢奋药水后，执行的命令

# --- 施加药效 ---
effect @s strength 1200 1 true
effect @s speed 1200 1 true
effect @s poison 25 0 true

# --- 移除另外两种主药水 ---
clear @s aw:potion_growth
clear @s aw:potion_turtle
playsound random.glass @s

# --- 标记为使用过药水 ---
execute if score isSingleLevel data matches 0 run scoreboard players set potionUsed data 1
