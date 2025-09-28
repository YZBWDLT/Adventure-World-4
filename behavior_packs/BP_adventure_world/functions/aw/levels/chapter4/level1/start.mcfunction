# ===== 开始游戏 =====
# 4-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 3

# --- 生成怪物 ---
function aw/levels/chapter4/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 复原关卡结构
structure load aw:4_1_phase1 -168 16 -23
