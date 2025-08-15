# ===== 开始游戏 =====
# 2-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 2

# --- 封闭关卡 ---
fill -74 20 58 -76 18 58 polished_diorite
fill -69 18 64 -69 20 66 polished_diorite

# --- 生成怪物 ---
function aw/levels/chapter2/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level
