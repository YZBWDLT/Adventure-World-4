# ===== 未完成关卡 =====
# 6-1

# --- 调用通用函数 ---
execute positioned -81 -30 -28 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -76 -30 -48

# --- 关卡特殊功能 ---
# 关闭摔落伤害
gamerule falldamage false
