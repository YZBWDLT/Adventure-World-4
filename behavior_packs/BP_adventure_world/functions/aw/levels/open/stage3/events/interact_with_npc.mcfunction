# ===== 玩家和 NPC 交互时 =====
# 0-3 | 到达时间神殿
# （命令执行者为 NPC）

# 田英
execute if entity @s[has_property={aw:is_author=false,aw:skin=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7§d商店的老板要找你§7，你自己住的村子，肯定知道在哪。","with":{"rawtext":[{"selector":"@s"}]}}]}
event entity @s[has_property={aw:is_author=false,aw:skin=7,aw:animation="none"}] aw:animation_speak
# 米云溪（这里不给动画更符合剧情）
execute if entity @s[has_property={aw:is_author=false,aw:skin=4}] run tellraw @p {"rawtext":[{"translate":"* §c%%s： §7田英，田英你看这里，我刚刚发现......","with":{"rawtext":[{"selector":"@s"}]}}]}
