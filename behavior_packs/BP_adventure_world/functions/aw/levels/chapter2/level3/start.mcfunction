# ===== 开始游戏 =====
# 2-3 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 3
## 最大波数
scoreboard players set maxWave data 3

# --- 封闭关卡 ---
fill -141 -21 60 -141 -19 62 polished_diorite
fill -167 -21 60 -167 -19 62 polished_diorite

# --- 生成怪物 ---
function aw/levels/chapter2/level3/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/modify_data/play_music
