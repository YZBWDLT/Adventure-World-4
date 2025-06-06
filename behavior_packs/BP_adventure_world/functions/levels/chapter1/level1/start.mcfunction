# ===== 开始游戏 =====
# 1-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 1

# --- 封闭关卡 ---
## 入口
fill -118 1 14 -116 3 14 sandstone ["sand_stone_type"="cut"]
fill -117 2 14 -117 2 14 sandstone ["sand_stone_type"="heiroglyphs"]
## 出口
fill -118 1 32 -116 3 32 sandstone ["sand_stone_type"="cut"]
fill -117 2 32 -117 2 32 sandstone ["sand_stone_type"="heiroglyphs"]

# --- 生成怪物 ---
function levels/chapter1/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function lib/modify_data/levels/start_level
