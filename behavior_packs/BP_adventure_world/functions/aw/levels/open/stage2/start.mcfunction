# ===== 开始关卡 =====
# 0-2 | 与田英初次对话

# 设置关卡 ID
scoreboard players set level data 2

# 调用通用函数
function aw/lib/events/levels/start_open

# 传送玩家
tp @a -26 1 -37 facing @e[name="田英",c=1]
