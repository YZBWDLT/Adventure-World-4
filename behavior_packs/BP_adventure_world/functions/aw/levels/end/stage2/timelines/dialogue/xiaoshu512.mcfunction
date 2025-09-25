# ===== 剧情：小鼠 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 选定条件 ---

## 留言一（默认）
scoreboard players set temp.condition data 1
## 留言二（难度1~3，单人，F~D评级）
execute if score difficulty record matches 1..3 if score playerAmount record matches 1 if score score record matches 0..59 run scoreboard players set temp.condition data 2
## 留言三（作弊）
execute if score hasCheat record matches 1 run scoreboard players set temp.condition data 3
## 留言四（难度4，单人通关，非留言三）
execute if score playerAmount record matches 1 if score difficulty record matches 4 if score temp.condition data matches !3 run scoreboard players set temp.condition data 4
## 留言五（难度4，多人通关，非留言三）
execute if score playerAmount record matches 2.. if score difficulty record matches 4 if score temp.condition data matches !3 run scoreboard players set temp.condition data 5

# --- 剧情 ---

# 留言内容

## 留言一
execute if score temp.condition data matches 1 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7还想坐牢的话尝试去把所有的成就都完成了罢awa"}]}

## 留言二
execute if score temp.condition data matches 2 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7可恶，你的评分怎么这么低......哼哼哼啊啊啊啊啊啊啊！§8[原文如此]"}]}

## 留言三
execute if score temp.condition data matches 3 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7啥？你居然作弊了？？嗯......没关系的，多练习下迟早不需要作弊的，期待你能够无作弊通关噢~"}]}

## 留言四
execute if score temp.condition data matches 4 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7五瓦！你做到了！！你真的做到了！！！§8(1/3)"}]}
execute if score temp.condition data matches 4 if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7没想到真的会有人去尝逝挑战这么坐牢的模式（悲）§8(2/3)"}]}
execute if score temp.condition data matches 4 if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7感谢你费心游玩此图！喜欢这地图的话不妨多多支持下awa"}]}

## 留言五
execute if score temp.condition data matches 5 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7恭喜！大佬们的配合相当不错（喜）§8(1/3)"}]}
execute if score temp.condition data matches 5 if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7不知道这难度对你们来说是洒洒水还是汗流浃背awa§8(2/3)"}]}
execute if score temp.condition data matches 5 if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7一起期待下一部作品吧！咕咕咕咕咕咕§8(3/3)"}]}

# NPC 动作
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=6,aw:animation="none"}] aw:animation_speak
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=6,aw:animation="none"}] aw:animation_speak
execute if score timeline time matches 120 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=6,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
execute if score temp.condition data matches 1..3 if score timeline time matches 1.. run scoreboard players set timeline active 1
execute if score temp.condition data matches 1..3 if score timeline time matches 1.. run function aw/lib/modify_data/timeline/disable_time_lapse

execute if score temp.condition data matches 4..5 if score timeline time matches 121.. run scoreboard players set timeline active 1
execute if score temp.condition data matches 4..5 if score timeline time matches 121.. run function aw/lib/modify_data/timeline/disable_time_lapse
