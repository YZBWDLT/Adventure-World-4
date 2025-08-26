# ===== 玩家和 NPC 交互时 =====
# 0-4 | 与张宇对话&到达剑之试炼入口
# （命令执行者为 NPC）

# 田英
execute if entity @s[has_property={aw:is_author=false,aw:skin=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7我们的勇气贤者从来不怕困难！","with":{"rawtext":[{"selector":"@s"}]}}]}
event entity @s[has_property={aw:is_author=false,aw:skin=7,aw:animation="none"}] aw:animation_speak
# 米云溪
execute if entity @s[has_property={aw:is_author=false,aw:skin=4}] run tellraw @p {"rawtext":[{"translate":"* §c%%s： §7一定要小心啊，我们在外面等你。","with":{"rawtext":[{"selector":"@s"}]}}]}
event entity @s[has_property={aw:is_author=false,aw:skin=4,aw:animation="none"}] aw:animation_speak
