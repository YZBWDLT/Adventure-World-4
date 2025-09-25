# ===== 剧情：文雨 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 选定条件 ---

## 留言一（默认）
execute if score timeline time matches 1 run scoreboard players set temp.condition data 1
## 留言二（单人，S 级评价）
execute if score timeline time matches 1 if score playerAmount record matches 1 if score score record matches 106.. run scoreboard players set temp.condition data 2
## 留言三（作弊）
execute if score timeline time matches 1 if score hasCheat record matches 1 run scoreboard players set temp.condition data 3

# --- 剧情 ---

## 第 1 句话
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=4,aw:animation="none"}] aw:animation_speak
execute if score timeline time matches 1 if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7经过这么长时间的战斗你一定累了吧，给你一个毛绒拥抱！§8(1/2)"}]}
execute if score timeline time matches 1 if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7哇！P......PVE大佬！我见到大佬了！......膜拜大佬！§8(1/2)"}]}
execute if score timeline time matches 1 if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7你作弊了？不能吧......§8(1/2)"}]}

## 第 2 句话
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=4,aw:animation="none"}] aw:animation_speak
execute if score timeline time matches 60 if score temp.condition data matches !2 run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7喜欢咱画的贴图吗？§8(2/2)"}]}
execute if score timeline time matches 60 if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7大佬喜欢咱画的贴图嘛！§8(2/2)"}]}

# --- 剧情结束 ---
execute if score timeline time matches 61.. run scoreboard players set timeline active 1
execute if score timeline time matches 61.. run function aw/lib/modify_data/timeline/disable_time_lapse
