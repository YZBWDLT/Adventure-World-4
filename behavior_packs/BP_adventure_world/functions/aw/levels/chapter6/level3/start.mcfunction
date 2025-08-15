# ===== 开始游戏 =====
# 6-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 4

# --- 封闭关卡 ---
fill -76 -37 -17 -74 -35 -17 deepslate_bricks
fill -74 -39 8 -76 -37 8 deepslate_bricks

# --- 生成怪物 ---
function aw/levels/chapter6/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 岩浆上涨
structure load aw:6_3_lava_2 -82 -40 -7
