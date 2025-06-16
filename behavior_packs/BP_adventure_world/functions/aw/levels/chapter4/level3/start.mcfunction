# ===== 开始游戏 =====
# 4-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 4

# --- 封闭关卡 ---
fill -155 -12 16 -157 -10 16 ice
fill -156 -18 5 -158 -18 7 ice replace water

# --- 生成怪物 ---
function aw/levels/chapter4/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level
