# ===== 开始游戏 =====
# 3-4 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 4
## 最大波数
scoreboard players set maxWave data 4

# --- 封闭关卡 ---
fill -168 -15 22 -168 -13 24 prismarine
fill -174 17 18 -172 19 18 prismarine

# --- 生成怪物 ---
function aw/levels/chapter3/level4/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/modify_data/play_music
