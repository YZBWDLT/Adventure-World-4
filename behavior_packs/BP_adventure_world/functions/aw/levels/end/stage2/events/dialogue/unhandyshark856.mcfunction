# ===== 剧情：鱼周 =====

# --- 选定条件 ---

# 留言一（默认）
scoreboard players set temp.condition data 1
# 留言二（难度2-4，死亡次数>=1）
execute if score difficulty record matches 2..4 if score failedCount record matches 1.. run scoreboard players set temp.condition data 2
# 留言三（难度2-4，死亡次数=0）
execute if score difficulty record matches 2..4 if score failedCount record matches 0 run scoreboard players set temp.condition data 3

# --- 剧情 ---

# 留言一
execute if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a鱼周（UnhandyShark856）： §7出售新鲜三叉戟溺尸（你不满意也不退货）。"}]}
# 留言二
execute if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a鱼周（UnhandyShark856）： §7让我猜猜你是怎么死的，三叉戟还是苦力怕又或者是女巫。"}]}
# 留言三
execute if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a鱼周（UnhandyShark856）： §7通关教程发我一份，谢谢。"}]}

event entity @s[has_property={aw:animation="none"}] aw:animation_speak
