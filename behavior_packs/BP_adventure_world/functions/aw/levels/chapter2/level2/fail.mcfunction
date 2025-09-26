# ===== 未完成关卡 =====
# 2-2

# --- 调用通用函数 ---
execute positioned -75 19 60 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -72 1 69

# --- 关卡特殊功能 ---

## 移除临时变量
scoreboard players reset temp.usedLever data
