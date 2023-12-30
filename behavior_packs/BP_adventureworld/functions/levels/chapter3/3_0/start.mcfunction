# ===== 第三章 =====

# --- 通用函数 ---
function methods/all_levels/start_chapter

# --- 设置level ---
scoreboard players set @e[name=level] background 301

# --- 标题&音效 ---
title @a title §b§l湖 泊 神 殿
title @a subtitle §c3-0

# --- 设置重生点 ---
tp @e[family=respawner] -173 -21 30

# --- 关卡初始化 ---
## 开放3-1入口
fill -186 -21 30 -186 -19 28 cobblestone_wall["wall_block_type":"prismarine"]
setblock -186 -20 29 air
## 封堵3-2入口
fill -173 -21 13 -171 -19 13 cobblestone_wall["wall_block_type":"prismarine"]
## 封堵3-3入口
fill -164 -21 26 -162 -19 26 cobblestone_wall["wall_block_type":"prismarine"]
## 封堵3-4入口
fill -168 -15 24 -168 -13 22 cobblestone_wall["wall_block_type":"prismarine"]
## 简单清除3-2和3-4的水
function levels/chapter3/3_2/water_clear
function levels/chapter3/3_4/water_clear