# ===== 玩家入坑后 =====

# 启用时间线
function aw/lib/modify_data/timeline/enable_time_lapse
scoreboard players set timeline active 3

# 黑屏
camera @a fade time 3 3 3
effect @a blindness 9 0 true

# 启用对话状态
function aw/lib/events/start_dialogue

# 移除引导点
event entity @e[type=aw:destination] aw:remove_immediately
