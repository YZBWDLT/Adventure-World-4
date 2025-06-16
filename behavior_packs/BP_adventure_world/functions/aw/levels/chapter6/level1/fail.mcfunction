# ===== 未完成关卡 =====
# 6-1

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/fail_level

# --- 重新开放关卡 ---
fill -75 -31 -46 -77 -29 -46 pointed_dripstone ["hanging"=false]
fill -75 -29 -46 -75 -30 -46 pointed_dripstone ["hanging"=true]
fill -77 -29 -46 -77 -29 -46 pointed_dripstone ["hanging"=true,"dripstone_thickness"="merge"]

# --- 关卡特殊功能 ---
# 关闭摔落伤害
gamerule falldamage false
