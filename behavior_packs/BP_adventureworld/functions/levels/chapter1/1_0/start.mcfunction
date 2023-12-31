# ===== 第一章 =====

# --- 设置level ---
scoreboard players set @e[name=level] background 101

# --- 通用函数 ---
function methods/all_levels/start_chapter

# --- 标题 ---
title @a title §e§l沙 漠 神 殿
title @a subtitle §c1-0

# --- 传送所有玩家并设置重生点 ---
tp @a -117 1 -6
tp @e[family=respawner] -117 1 -6

# --- 先行封闭各关卡出口 ---
# 1-1出口
fill -118 1 32 -116 3 32 cobblestone_wall["wall_block_type":"sandstone"]
# 1-3出口
fill -121 18 25 -121 20 27 cobblestone_wall["wall_block_type":"red_sandstone"]
