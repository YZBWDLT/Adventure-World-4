# ===== 未完成关卡 =====
# 7-1

# --- 调用通用函数 ---
execute positioned -119 -16 103 run function aw/lib/events/levels/fail_level

# --- 重新开放关卡 ---
# （本关未封闭入口，因此无需重新开放）

# --- 关卡特殊功能 ---
# 重新启动 7-0 结束剧情（启用时间线流逝）
function aw/lib/modify_data/timeline/enable_time_lapse
