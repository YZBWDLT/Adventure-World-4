# ===== 开始游戏 =====
# 4-4 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 4
## 最大波数
scoreboard players set maxWave data 1

# --- 封闭关卡 ---
fill -143 -31 7 -143 -29 5 ice
fill -117 -31 7 -117 -29 5 ice

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level
titleraw @a subtitle {"rawtext":[{"translate":"§c4-4 §f| 随机位置生成随机怪物"}]}

# --- 生成怪物 ---
# （本关不分波）
summon guardian -138 -30 -2 0 0 aw:invulnerable
summon guardian -122 -30 -2 0 0 aw:invulnerable
summon guardian -122 -30 14 0 0 aw:invulnerable
summon guardian -138 -30 14 0 0 aw:invulnerable

# --- 关卡特殊功能 ---
## 提示玩家获胜条件
tellraw @a {"rawtext":[{"translate":"§c本关怪物将在不同位置随机生成，守卫者不可击杀！坚持3分钟即可获胜！"}]}
## 播放音乐
function aw/lib/modify_data/play_music
## 临时变量设置
scoreboard players set temp.remainingTime time 180
scoreboard players random temp.nextMonster time 3 10
scoreboard players set temp.nextMonsterType data 0
scoreboard players set temp.nextMonsterPos data 0
