# ===== 剧情：绿叶 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---

## 第 1 句话
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a绿叶（GreeLeaf）： §7感谢游玩！通关的成就感如何？§8(1/3)"}]}
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=2,aw:animation="none"}] aw:animation_speak

## 第 2 句话
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a绿叶（GreeLeaf）： §7本次o绿叶o和各位大佬强强联合做出了此图，希望你喜欢~§8(2/3)"}]}
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=2,aw:animation="none"}] aw:animation_speak

## 第 3 句话
execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"* §a绿叶（GreeLeaf）： §7咕咕咕，咕咕咕~~§8(3/3)"}]}
execute if score timeline time matches 120 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=2,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
execute if score timeline time matches 121.. run scoreboard players set timeline active 1
execute if score timeline time matches 121.. run function aw/lib/modify_data/timeline/disable_time_lapse
