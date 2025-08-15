# ===== 开始游戏 =====
# 1-2 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 2
## 最大波数
scoreboard players set maxWave data 1

# --- 封闭关卡 ---
fill -127 5 50 -125 7 50 sandstone["sand_stone_type"="cut"]
fill -126 6 50 -126 6 50 sandstone["sand_stone_type"="heiroglyphs"]

# --- 生成怪物 ---
function aw/levels/chapter1/level2/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---

## 提示玩家药水补充机制
tellraw @a {"rawtext":[{"translate":"§a药水将会在每关开始前自动供应充足！"}]}
