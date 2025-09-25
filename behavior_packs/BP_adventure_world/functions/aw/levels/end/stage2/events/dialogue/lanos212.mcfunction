# ===== 剧情：lanos =====

# --- 选定条件 ---

# 留言一（默认）
scoreboard players set temp.condition data 1
# 留言二（通关分钟数<=30）
execute if score playedMinute record matches ..30 run scoreboard players set temp.condition data 2

# --- 剧情 ---

# 留言一
execute if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §alanos（lanos212）： §7如果你觉得自己不够亢奋，可以喝那↗个↘药↗水↘在 30 分钟内给地图踩！踩！背！"}]}
# 留言二
execute if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §alanos（lanos212）： §7你太亢奋了，快去筑梦给可恶的巴豆和他的代码踩！踩！背！吧 >:("}]}

event entity @s[has_property={aw:animation="none"}] aw:animation_speak
