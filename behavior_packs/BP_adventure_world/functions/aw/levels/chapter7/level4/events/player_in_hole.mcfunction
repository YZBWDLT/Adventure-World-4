# ===== 玩家入坑后 =====

# 启用时间线
function aw/lib/modify_data/states/timeline/enable_time_lapse
scoreboard players set timeline active 3

# 黑屏
camera @a fade time 1 5 1

# 启用对话状态
function aw/lib/modify_data/start_dialogue
