# ===== 防作弊 =====

# --- 当检测到玩家作弊后，添加标签 ---
execute if entity @a[m=creative] if score hasCheat data matches 0 run scoreboard players set hasCheat data 1
