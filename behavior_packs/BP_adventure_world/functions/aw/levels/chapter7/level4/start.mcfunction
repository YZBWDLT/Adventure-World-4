# ===== 开始游戏 =====
# 7-4 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 4
## 最大波数
scoreboard players set maxWave data 5

# --- 封闭关卡 ---
fill -223 -18 98 -223 -16 100 nether_brick
fill -235 -30 97 -233 -30 99 red_stained_glass

# --- 生成怪物 ---
function aw/levels/chapter7/level4/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 添加岩浆
fill -224 -27 111 -244 -29 85 lava keep
## 播放音乐
function aw/lib/events/play_music
## 把时间线状态改为 1
scoreboard players set timeline active 1
