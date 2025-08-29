# ===== 开始游戏 =====
# 3-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 3

# --- 生成怪物 ---
function aw/levels/chapter3/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level
