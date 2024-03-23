# ===== 进入剑之神殿 =====

# --- 设置关卡ID ---
scoreboard players set @e[name=level] data 701

# --- 召唤旷野之剑实体 ---
summon aw:wild_sword -87 -38 105 aw:stage_1

# --- 初始化天花板 ---
fill -82 1 111 -91 -1 99 air
fill -82 0 111 -91 0 99 quartz_block["chisel_type":"smooth"]

# --- 将玩家传送到小黑屋并给予失明 ---
tp @a -87 -40 85
effect @a blindness 30 0 true

# --- 初始化标题时间 ---
title @a times 0 100 0

# --- 重置时间线和剧情线 ---
function lib/states/timeline/enable
function lib/states/dialogue/enable
