# ===== 未完成关卡 =====
# 3-1

# --- 调用通用函数 ---
execute positioned -173 -20 30 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -188 -20 29

# --- 关卡特殊功能 ---
## 重新封闭 3-2、3-3 和 3-4
event entity @e[type=aw:door,name="3-2"] aw:close_door
event entity @e[type=aw:door,name="3-3"] aw:close_door
event entity @e[type=aw:door,name="3-4"] aw:close_door
