# ===== 未完成关卡 =====
# 3-2

# --- 调用通用函数 ---
execute positioned -188 -20 29 run function aw/lib/events/levels/fail_level

# --- 重新开放关卡 ---
fill -171 -21 13 -173 -19 13 structure_void

# --- 关卡特殊功能 ---
## 清除水
function aw/levels/chapter3/level2/events/clear_water
structure load aw:3_2_phase1 -192 -22 -1

# --- 关卡特殊功能 ---
## 把时间线状态改回 3，以防止玩家重过一遍剧情
scoreboard players set timeline active 3
