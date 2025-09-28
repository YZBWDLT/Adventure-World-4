# ===== 开始游戏 =====
# 7-2 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 2
## 最大波数
scoreboard players set maxWave data 3

# --- 生成怪物 ---
function aw/levels/chapter7/level2/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level
