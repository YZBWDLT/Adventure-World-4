# ===== 未完成关卡 =====
# 3-3

# --- 调用通用函数 ---
execute positioned -172 -20 11 run function aw/lib/events/levels/fail_level

# --- 关卡特殊功能 ---
## 重新封闭 3-4
event entity @e[type=aw:door,name="3-4"] aw:close_door
