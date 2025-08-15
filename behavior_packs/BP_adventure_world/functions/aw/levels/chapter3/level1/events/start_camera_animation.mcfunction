# ===== 启动关卡后动画 =====

# 设定时间线状态，并启用时间线流逝
scoreboard players set timeline active 2
function aw/lib/modify_data/timeline/enable_time_lapse

# 传送所有玩家，防止其淹死在水里
tp @a -184 -21 29 facing -169 -20 29

# 启用对话状态
event entity @e[type=aw:npc] aw:remove_immediately
summon aw:npc -15 1.5 105 facing -16 1 103 aw:npc_miyunxi "米云溪"
summon aw:npc -13 5 111 0 0 aw:npc_tianying "田英"
event entity @e[type=aw:npc] aw:ignore_player

function aw/lib/events/start_dialogue
