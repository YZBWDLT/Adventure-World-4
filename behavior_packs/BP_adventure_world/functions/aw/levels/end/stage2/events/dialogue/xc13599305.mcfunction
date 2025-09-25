# ===== 剧情：星辰 =====

# --- 选定条件 ---

# 留言一（默认）
scoreboard players set temp.condition data 1
# 留言二（难度4）
execute if score difficulty record matches 4 run scoreboard players set temp.condition data 2
# 留言三（单人，F评级）
execute if score playerAmount record matches 1 if score score record matches 0..30 run scoreboard players set temp.condition data 3
# 留言四（难度4，死亡次数=0）
execute if score difficulty record matches 4 if score failedCount record matches 0 run scoreboard players set temp.condition data 4
# 留言五（作弊）
execute if score hasCheat record matches 1 run scoreboard players set temp.condition data 5

# --- 剧情 ---

# 留言一
execute if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7期待你通关最高难度的那一刻。"}]}
# 留言二
execute if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7要不要挑战一下一命通关难度4呢？"}]}
# 留言三
execute if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7能坚持玩完已经很不错了呢，继续加油吧！"}]}
# 留言四
execute if score temp.condition data matches 4 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7你真的做到了......（震惊"}]}
# 留言五
execute if score temp.condition data matches 5 run tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7看来还得多练习一下呢~"}]}

event entity @s[has_property={aw:animation="none"}] aw:animation_speak
