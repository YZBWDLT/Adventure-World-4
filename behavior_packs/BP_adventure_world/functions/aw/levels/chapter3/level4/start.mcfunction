# ===== 开始游戏 =====
# 3-4 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 4
## 最大波数
scoreboard players set maxWave data 4

# --- 生成怪物 ---
function aw/levels/chapter3/level4/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
