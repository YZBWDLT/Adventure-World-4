# ===== 第四章 =====

# --- 通用函数 ---
function lib/all_levels/start_chapter

# --- 设置level ---
scoreboard players set @e[name=level] data 401

# --- 标题 ---
title @a title §3§l寒 冰 神 殿
title @a subtitle §c4-0

# --- 设置重生点 ---
tp @e[family=respawner] -172 17 -6

# --- 对关卡进行初始化 ---
## 初始化4-1
structure load 4_1_phase1 -168 16 -23
## 封堵4-2入口
fill -155 7 -3 -157 9 -3 ice
## 封堵4-2~4-4的出口（从上到下依次为4-2~4-4）
fill -155 7 16 -157 9 16 ice
fill -156 -18 5 -158 -18 7 ice[] replace water[]
fill -117 -31 7 -117 -29 5 ice
