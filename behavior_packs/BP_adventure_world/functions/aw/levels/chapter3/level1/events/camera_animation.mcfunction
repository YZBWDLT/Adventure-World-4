# ===== 启动关卡后动画 =====

# 设定时间线状态，并启用时间线流逝
scoreboard players set timeline active 2
function aw/lib/modify_data/timeline/enable_time_lapse

# 传送所有玩家，防止其淹死在水里
tp @a -184 -21 29 facing -169 -20 29

# 启用对话状态
event entity @e[type=aw:npc] aw:remove_immediately
summon aw:npc -15 1.5 105 facing -16 1 103 aw:npc_miyunxi "米云溪"
summon aw:npc -18 6 101 0 0 aw:npc_tianying "田英"
event entity @e[type=aw:npc] aw:ignore_player
event entity @e[name="田英"] aw:state_sleep
replaceitem entity @e[name="米云溪"] slot.weapon.mainhand 0 aw:acoustic_stone_crystal

function aw/lib/events/start_dialogue
