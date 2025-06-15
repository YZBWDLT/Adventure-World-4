# ===== 开始游戏 =====
# 3-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 3

# --- 封闭关卡 ---
fill -162 -21 26 -164 -19 26 prismarine

# --- 生成怪物 ---
function aw/levels/chapter3/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level
