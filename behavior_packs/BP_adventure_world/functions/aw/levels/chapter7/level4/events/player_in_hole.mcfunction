# ===== 玩家入坑后 =====

# 启用时间线
function aw/lib/modify_data/timeline/enable_time_lapse
scoreboard players set timeline active 3

# 黑屏并失明
camera @a fade time 1 5 1
effect @a blindness 9 0 true

# 启用对话状态
function aw/lib/events/start_dialogue

# 加载 7-5 的初始结构
structure load aw:7_5_phase1 -246 -54 23
