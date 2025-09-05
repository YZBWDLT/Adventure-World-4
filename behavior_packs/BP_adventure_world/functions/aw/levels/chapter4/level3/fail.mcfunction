# ===== 未完成关卡 =====
# 4-3

# --- 调用通用函数 ---
execute positioned -156 8 -1 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -156 -11 14

# --- 关卡特殊功能 ---
## 开放 4-3 出口
fill -156 -18 5 -158 -18 7 air replace ice
