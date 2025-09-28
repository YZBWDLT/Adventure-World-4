# ===== 开始游戏 =====
# 4-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 4

# --- 生成怪物 ---
function aw/levels/chapter4/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 封闭 4-3 出口
fill -156 -18 5 -158 -18 7 ice replace water
## 设置临时变量
scoreboard players set temp.playerEquippedLeatherBoots data 0
