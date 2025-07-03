# ===== 开始游戏 =====
# 3-2 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 2
## 最大波数
scoreboard players set maxWave data 3

# --- 封闭关卡 ---
fill -171 -21 13 -173 -19 13 prismarine

# --- 生成怪物 ---
function aw/levels/chapter3/level2/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level

# --- 关卡特殊功能 ---
## 把时间线状态改回 1
scoreboard players set timeline active 1
