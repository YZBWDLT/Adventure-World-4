# ===== 开始游戏 =====
# 1-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 2

# --- 封闭关卡 ---
## 入口
fill -139 11 34 -139 13 32 red_sandstone["sand_stone_type"="cut"]
fill -139 12 33 -139 12 33 red_sandstone["sand_stone_type"="heiroglyphs"]
## 出口
fill -121 18 25 -121 20 27 red_sandstone["sand_stone_type"="cut"]
fill -121 19 26 -121 19 26 red_sandstone["sand_stone_type"="heiroglyphs"]

# --- 生成怪物 ---
function levels/chapter1/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level
