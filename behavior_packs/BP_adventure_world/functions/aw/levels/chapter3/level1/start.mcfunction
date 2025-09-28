# ===== 开始游戏 =====
# 3-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 2

# --- 生成怪物 ---
function aw/levels/chapter3/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 提示玩家
tellraw @a {"rawtext":[{"translate":"§a试试使用一种主药水吧！请谨慎选择，每关你只能选择一种。"}]}
## 封闭关卡（本关因为出口结构空位会堵塞水流，所以没有放结构空位，所以屏障要额外适配）
fill -199 -21 29 -197 -19 29 barrier
