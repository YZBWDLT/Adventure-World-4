# ===== 未完成关卡 =====
# 6-1

# --- 调用通用函数 ---
execute positioned -81 -30 -28 run function aw/lib/modify_data/levels/fail_level

# --- 重新开放关卡 ---
fill -75 -31 -46 -77 -29 -46 air

# --- 关卡特殊功能 ---
# 关闭摔落伤害
gamerule falldamage false
