# ===== 开始游戏 =====
# 2-2 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 2
## 最大波数
scoreboard players set maxWave data 3

# --- 生成怪物 ---
function aw/levels/chapter2/level2/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---

## 重置拉杆
setblock -86 -17 66 lever ["lever_direction"="up_east_west","open_bit"=false]
setblock -89 -17 67 lever ["lever_direction"="up_east_west","open_bit"=false]
setblock -87 -17 69 lever ["lever_direction"="up_north_south","open_bit"=false]
