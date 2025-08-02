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
    ### BOSS 的 2/3 血量
        scoreboard players set temp.bossHealthTwoThird data 100
    ### BOSS 的 1/3 血量
        scoreboard players set temp.bossHealthOneThird data 50
    ### 岩浆涨落倒计时
        scoreboard players random temp.lavaRiseCountdown time 8 20
    ### 怪物生成倒计时
        scoreboard players random temp.nextMonster time 3 7
    ### 怪物生成类型
        scoreboard players set temp.nextMonsterType data 0
    ### 怪物生成位置
        scoreboard players set temp.nextMonsterPos data 0
    ### 血量恢复倒计时
        scoreboard players set temp.healBossCountdown time 3
    ### BOSS 随机传送倒计时
        scoreboard players random temp.teleportCountdown time 6 10
    ### 玩家重生倒计时记分项
        scoreboard objectives add temp.respawnTime dummy "重生时间"
    ### 玩家重生倒计时
        scoreboard players set @a temp.respawnTime 0
