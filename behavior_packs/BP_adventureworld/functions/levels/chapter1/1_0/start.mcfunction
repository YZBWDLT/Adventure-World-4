# ===== 第一章 =====

# --- 设置level ---
scoreboard players set @e[name=level] data 101

# --- 清空玩家的物品 ---
clear @a

# --- 锁死玩家后两号物品栏 ---
replaceitem entity @a slot.inventory 25 barrier 1 0 {"item_lock": { "mode": "lock_in_slot" } }
replaceitem entity @a slot.inventory 26 barrier 1 0 {"item_lock": { "mode": "lock_in_slot" } }

# --- 通用函数 ---
function lib/all_levels/start_chapter

# --- 标题 ---
title @a title §e§l沙 漠 神 殿
title @a subtitle §c1-0

# --- 传送所有玩家并设置重生点 ---
tp @a -117 1 -6
tp @e[family=respawner] -117 1 -6

# --- 先行封闭各关卡出口 ---
# 1-1出口
fill -118 1 32 -116 3 32 sandstone["sand_stone_type":"cut"]
fill -117 2 32 -117 2 32 sandstone["sand_stone_type":"heiroglyphs"]
# 1-3出口
fill -121 18 25 -121 20 27 red_sandstone["sand_stone_type":"cut"]
fill -121 19 26 -121 19 26 red_sandstone["sand_stone_type":"heiroglyphs"]

# --- 设定玩家镜头位置 ---
tp @e[name=playerPosition] -120 4 -4
tp @e[name=facingPosition] -117 2 -1 facing @e[name=playerPosition,c=1]
