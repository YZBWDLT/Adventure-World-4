# ===== 玩家和 NPC 交互时 =====
# 10-3 | 进入试炼门口
# （命令执行者为 NPC）

# 张宇
# 整个场景只有张宇一个 NPC，所以这里不再额外设定类型

tellraw @a {"rawtext":[{"translate":"* §e张宇： §7你要回去吗？"}]}
event entity @s aw:animation_speak
scoreboard players set timeline active 1
function aw/lib/events/start_dialogue_keep
function aw/lib/modify_data/timeline/enable_time_lapse
