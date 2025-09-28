# ===== 玩家和 NPC 交互时 =====
# 0-2 | 与田英初次对话
# （命令执行者为 NPC）

# 田英
execute if entity @s[has_property={aw:is_author=false,aw:skin=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7没听清楚位置？在§d后山的时间神殿§7。","with":{"rawtext":[{"selector":"@s"}]}}]}
event entity @s[has_property={aw:is_author=false,aw:skin=7,aw:animation="none"}] aw:animation_speak
