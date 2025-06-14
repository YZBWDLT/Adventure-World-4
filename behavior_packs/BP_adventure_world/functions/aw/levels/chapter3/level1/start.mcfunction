# ===== 开始游戏 =====
# 3-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 2

# --- 封闭关卡 ---
## 封闭出口
fill -199 -21 29 -197 -19 29 prismarine

# --- 生成怪物 ---
function aw/levels/chapter3/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/modify_data/levels/start_level

# --- 关卡特殊功能 ---
## 提示玩家
tellraw @a {"rawtext":[{"translate":"§a试试使用一种主药水吧！请谨慎选择，每关你只能选择一种。"}]}
