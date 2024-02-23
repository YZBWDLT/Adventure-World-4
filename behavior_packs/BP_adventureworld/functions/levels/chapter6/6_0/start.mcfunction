# ===== 第六章开始 =====

# --- 通用函数 ---
function lib/all_levels/start_chapter

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
### 入口
fill -75 -31 -46 -77 -29 -46 pointed_dripstone["hanging":false]
fill -75 -29 -46 -75 -30 -46 pointed_dripstone["hanging":true]
fill -77 -29 -46 -77 -29 -46 pointed_dripstone["hanging":true,"dripstone_thickness":"merge"]
### 出口
fill -82 -31 -62 -82 -29 -64 dripstone_block
## 6-2
fill -72 -19 -30 -70 -17 -30 stained_glass["color":"purple"]
## 6-3
fill -74 -39 8 -76 -37 8 deepslate_bricks
