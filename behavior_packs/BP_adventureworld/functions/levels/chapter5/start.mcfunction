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

# --- 清除4-4可能在最后生成的生成器 ---
#<!> 在6-1发现了来自4-4的怪物，理论上来说生成器是应当被销毁的
kill @e[family=summoner]