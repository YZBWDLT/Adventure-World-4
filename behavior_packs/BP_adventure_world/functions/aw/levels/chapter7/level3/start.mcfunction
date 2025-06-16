# ===== 开始游戏 =====
# 7-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 4

# --- 封闭关卡 ---
fill -192 -18 96 -192 -16 98 nether_brick
fill -217 -18 98 -217 -16 100 nether_brick

# --- 生成怪物 ---
function aw/levels/chapter7/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level
