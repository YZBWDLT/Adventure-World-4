# ===== 开始游戏 =====
# 7-2 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 2
## 最大波数
scoreboard players set maxWave data 3

# --- 封闭关卡 ---
fill -159 -18 109 -159 -16 111 nether_brick
fill -184 -18 98 -184 -16 96 nether_brick

# --- 生成怪物 ---
function aw/levels/chapter7/level2/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level
