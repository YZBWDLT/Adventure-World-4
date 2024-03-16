# ===== 第二章 =====

# --- 通用函数 ---
function lib/all_levels/start_chapter

# --- 设置level ---
scoreboard players set @e[name=level] data 201

# --- 标题 ---
title @a title §a§l丛 林 神 殿
title @a subtitle §c2-0

# --- 设置重生点 ---
tp @e[family=respawner] -77 18 26

# --- 先行封闭各关卡出口 ---
## 2-1
fill -69 18 64 -69 20 66 stone["stone_type":"diorite_smooth"]
## 2-2
fill -104 -17 69 -104 -15 67 stone["stone_type":"diorite_smooth"]
## 2-3
fill -167 -21 60 -167 -19 62 stone["stone_type":"diorite_smooth"]
