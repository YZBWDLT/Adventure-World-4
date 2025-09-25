# ===== 剧情：小飞侠 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 选定条件 ---

## 留言一（默认）
execute if score timeline time matches 1 run scoreboard players set temp.condition data 1
## 留言二（难度 4）
execute if score timeline time matches 1 if score difficulty record matches 4 run scoreboard players set temp.condition data 2
## 留言三（作弊）
execute if score timeline time matches 1 if score hasCheat record matches 1 run scoreboard players set temp.condition data 3

# --- 剧情 ---

## 第 1 句话
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=20,aw:animation="none"}] aw:animation_speak
execute if score timeline time matches 1 if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小飞侠（KrisWenYu）： §7恭喜通关！如果感兴趣的话，还可以选择更高的难度进行挑战噢！§8(1/2)"}]}
execute if score timeline time matches 1 if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a小飞侠（KrisWenYu）： §7恭喜通关最高难度！如果感觉全流程太长的话，可以选择单个关卡来进行游玩噢！§8(1/2)"}]}
execute if score timeline time matches 1 if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a小飞侠（KrisWenYu）： §7恭喜通关！悄悄的问一下，开创造游玩的感觉怎么样呀(～￣▽￣)～ 如果觉得某一关太难了，可以单独选择它进行练习！§8(1/2)"}]}

## 第 2 句话
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=20,aw:animation="none"}] aw:animation_speak
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a小飞侠（KrisWenYu）： §7在试炼中挑战自我固然有趣，不过也不要忘记现实世界中的工作和学习喔！§8(2/2)"}]}

# --- 剧情结束 ---
execute if score timeline time matches 61.. run scoreboard players set timeline active 1
execute if score timeline time matches 61.. run function aw/lib/modify_data/timeline/disable_time_lapse
