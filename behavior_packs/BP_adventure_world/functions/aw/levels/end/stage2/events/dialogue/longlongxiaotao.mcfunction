# ===== 剧情：龙龙 =====

# --- 选定条件 ---

# 留言一（默认）
scoreboard players set temp.condition data 1
# 留言二（难度4）
execute if score difficulty record matches 1..2 if score failedCount record matches 0 run scoreboard players set temp.condition data 2
# 留言三（单人，F评级）
execute if score difficulty record matches 1..2 if score failedCount record matches 1.. run scoreboard players set temp.condition data 3
# 留言四（难度4，死亡次数=0）
execute if score difficulty record matches 3..4 if score failedCount record matches 0 run scoreboard players set temp.condition data 4
# 留言五（作弊）
execute if score difficulty record matches 3..4 if score failedCount record matches 1.. run scoreboard players set temp.condition data 5

# --- 剧情 ---

# 留言一
execute if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a龙龙（longlongxiaotao）： §7高中物理压榨我了，你（们）能来救救我嘛？qwq"}]}
# 留言二
execute if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a龙龙（longlongxiaotao）： §7你（们）是个厉害的小伙子呀，和我一样都能做到难度1与难度2零死亡通关，真棒！"}]}
# 留言三
execute if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a龙龙（longlongxiaotao）： §7小伙子的实力还差那么一点点呐，没事的，慢慢来，相信自己一定能做到零死亡的。"}]}
# 留言四
execute if score temp.condition data matches 4 run tellraw @a {"rawtext":[{"translate":"* §a龙龙（longlongxiaotao）： §7你是如何做到零死亡的？你难道有无敌金身或者不死图腾嘛？简直是神一般的无敌呀！"}]}
# 留言五
execute if score temp.condition data matches 5 run tellraw @a {"rawtext":[{"translate":"* §a龙龙（longlongxiaotao）： §7这位勇敢机智的冒险家，虽然败下阵来，但也不要灰心，因为难度3与难度4的难度可想而知，换作我的话，也不一定能成功的。"}]}

event entity @s[has_property={aw:animation="none"}] aw:animation_speak
