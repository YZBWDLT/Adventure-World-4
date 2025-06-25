# ===== 开始游戏 =====
# 6-4 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 4
## 最大波数
scoreboard players set maxWave data 1

# --- 封闭关卡 ---
fill -76 -39 20 -74 -37 20 deepslate_bricks

# --- 生成怪物 ---
function aw/levels/chapter6/level4/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level

# --- 关卡特殊功能 ---
## 提示玩家胜利条件
tellraw @a {"rawtext":[{"translate":"§a本关击杀BOSS即可获胜！"}]}
## 播放音乐
function aw/lib/modify_data/play_music
## 临时变量设置
scoreboard players set temp.bossHealthTwoThird data 100
scoreboard players set temp.bossHealthOneThird data 50
scoreboard players random temp.lavaRiseCountdown time 8 20
scoreboard players random temp.nextMonster time 3 7
scoreboard players set temp.nextMonsterType data 0
scoreboard players set temp.nextMonsterPos data 0
scoreboard players set temp.healBossCountdown time 3
scoreboard players random temp.teleportCountdown time 6 10
