# ===== 开始游戏 =====
# 6-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 2

# --- 生成怪物 ---
function aw/levels/chapter6/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 启用摔落伤害
gamerule falldamage true
tellraw @a {"rawtext":[{"text":"§c注意，本关有摔落伤害！"}]}
## 提示玩家有关骷髅敢死队的信息
tellraw @a {"rawtext":[{"translate":"§a当心骷髅敢死队！它们非常脆弱，但拥有非常高的近战伤害，务必要优先解决！"}]}
