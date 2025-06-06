# ===== 开始关卡 =====
# 0-5 | 进入剑之试炼神殿（开幕时间线）

# 设置关卡 ID
scoreboard players set level data 5

# 调用通用函数
function aw/lib/modify_data/levels/start_open

# 黑屏
camera @a fade time 5 10 3 color 0 0 0

# 初始化标题时间
title @a times 10 30 10
