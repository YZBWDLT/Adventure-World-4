# ===== 剧情：南瓜汁 =====

# --- 选定条件 ---

# 留言一（默认）
scoreboard players set temp.condition data 1
# 留言二（单人，评级F~D）
execute if score playerAmount record matches 1 if score score record matches 0..59 run scoreboard players set temp.condition data 2
# 留言三（作弊）
execute if score hasCheat record matches 1 run scoreboard players set temp.condition data 3

# --- 剧情 ---

# 留言一
execute if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁为比他 PVE 更强的玩家而骄傲。）"}]}
# 留言二
execute if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁终于找到了和他 PVE 水平相当的玩家，并拍了拍以示安慰。）"}]}
# 留言三
execute if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（一个秘密，南瓜汁喜欢在测试时用玉米加农炮轰炸伽刚特尔。）"}]}

event entity @s[has_property={aw:animation="none"}] aw:animation_speak
