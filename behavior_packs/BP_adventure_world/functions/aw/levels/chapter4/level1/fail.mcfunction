# ===== 未完成关卡 =====
# 4-1

# --- 调用通用函数 ---
execute positioned -173 18 -8 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -168 18 -20

# --- 关卡特殊功能 ---
## 封闭 4-2
event entity @e[type=aw:door,name="4-2"] aw:close_door
