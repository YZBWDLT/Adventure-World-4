# ===== 剧情：硫化银 =====

# --- 选定条件 ---

# 留言一（默认）
scoreboard players set temp.condition data 1
# 留言二（难度1-2，死亡次数>=1）
execute if score difficulty record matches 1..2 if score failedCount record matches 1.. run scoreboard players set temp.condition data 2
# 留言三（难度3-4，死亡次数=0）
execute if score difficulty record matches 3..4 if score failedCount record matches 0 run scoreboard players set temp.condition data 3

# --- 剧情 ---

# 留言一
execute if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a硫化银（yiyishi54188）： §7可恶的高中学业使我不能安心地测试aaa（悲"}]}
# 留言二
execute if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a硫化银（yiyishi54188）： §7点击输入文字§8[原文如此]"}]}
# 留言三
execute if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a硫化银（yiyishi54188）： §7666这个入肯定开桂了（bushi"}]}

event entity @s[has_property={aw:animation="none"}] aw:animation_speak
