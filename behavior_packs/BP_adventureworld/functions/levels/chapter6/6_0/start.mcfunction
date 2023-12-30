# ===== 第六章开始 =====

# --- 通用函数 ---
function methods/all_levels/start_chapter

# --- 设置level ---
scoreboard players set @e[name=level] background 601

# --- 标题 ---
title @a title §7§l山 峦 神 殿
title @a subtitle §c6-0

# --- 设置重生点 ---
tp @e[family=respawner] -78 -31 -29

# --- 封堵6-3 ---
fill -74 -32 -23 -77 -32 -22 obsidian[] keep
## 封堵各个关卡的出口
## 6-1
fill -82 -31 -64 -82 -29 -62 pointed_dripstone["hanging":true]
fill -82 -31 -63 -82 -30 -63 pointed_dripstone["hanging":false]
fill -82 -31 -64 -82 -31 -64 pointed_dripstone["hanging":false,"dripstone_thickness":"merge"]
fill -83 -31 -62 -83 -29 -64 barrier[] keep
## 6-2
fill -72 -19 -32 -70 -17 -32 stained_glass["color":"purple"]
## 6-3
fill -74 -39 8 -76 -37 8 deepslate_brick_wall
