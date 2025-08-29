# ===== 未完成关卡 =====
# 7-1

# --- 调用通用函数 ---
execute positioned -119 -16 103 run function aw/lib/events/levels/fail_level

# --- 重新封闭关卡 ---
event entity @e[type=aw:door] aw:close_door

# --- 关卡特殊功能 ---
# 重新启动 7-0 结束剧情（启用时间线流逝）
function aw/lib/modify_data/timeline/enable_time_lapse
