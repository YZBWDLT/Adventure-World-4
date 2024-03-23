# ===== 第五章 =====

# --- 通用函数 ---
function lib/all_levels/start_chapter

# --- 设置level ---
scoreboard players set @e[name=level] data 501

# --- 标题 ---
title @a title §f§l红 石 神 殿
title @a subtitle §c5-0

# --- 设置重生点 ---
tp @e[family=respawner] -95 -31 -13

# --- 设定玩家镜头位置 ---
tp @e[name=playerPosition] -89 -25 -19
tp @e[name=facingPosition] -101 -30 -7 facing @e[name=playerPosition,c=1]
