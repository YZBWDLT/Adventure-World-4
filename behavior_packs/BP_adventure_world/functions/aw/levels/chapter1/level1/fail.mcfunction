# ===== 未完成关卡 =====
# 1-1

# --- 调用通用函数 ---
execute positioned -117 1 -6 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -117 2 16

# --- 关卡特殊功能 ---
## 获取成就：(1) 无作弊，(2) 成就未获取 -> 出师未捷身先死
execute if score hasCheat data matches 0 if score achievement.failAtFirst record matches 0 run function aw/lib/achievements/levels/fail_at_first
