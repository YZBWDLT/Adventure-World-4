# ===== 开始游戏 =====
# 2-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 2

# --- 生成怪物 ---
function aw/levels/chapter2/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level
