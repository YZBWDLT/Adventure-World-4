# ===== 剧情：小鼠 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 选定条件 ---

## 留言一（默认）
scoreboard players set temp.condition data 1
## 留言二（难度1~3，单人，F~D评级）
execute if score difficulty record matches 1..3 if score playerAmount record matches 1 if score score record matches 0..60 run scoreboard players set temp.condition data 2
## 留言三（难度4，单人通关）
execute if score playerAmount record matches 1 if score difficulty record matches 4 run scoreboard players set temp.condition data 3
## 留言四（难度4，多人通关）
execute if score playerAmount record matches 2.. if score difficulty record matches 4 run scoreboard players set temp.condition data 4
## 留言五（作弊）
execute if score hasCheat record matches 1 run scoreboard players set temp.condition data 5
## 留言六（全成就）
execute if score achievement record matches 24 run scoreboard players set temp.condition data 6

# --- 剧情 ---

# 留言内容

## 留言一
execute if score temp.condition data matches 1 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7还想坐牢吗？尝试把所有的成就都完成吧！"}]}

## 留言二
execute if score temp.condition data matches 2 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7哈哈哈哈哈哈哈哈哈哈哈哈×114§8[原文如此]"}]}

## 留言三
execute if score temp.condition data matches 3 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7恭喜！你通关了本图最高难度！§8(1/2)"}]}
execute if score temp.condition data matches 3 if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7感谢你费心游玩！喜欢这地图的话不妨多多支持下awa§8(2/2)"}]}

## 留言四
execute if score temp.condition data matches 4 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7恭喜！你们通关了本图最高难度！各位感觉如何呢？§8(1/2)"}]}
execute if score temp.condition data matches 4 if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7感谢各位费心游玩！喜欢这地图的话不妨多多支持下awa§8(2/2)"}]}

## 留言五
execute if score temp.condition data matches 5 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7哈哈哈哈哈哈哈哈哈哈哈哈×114§8[原文如此]"}]}

## 留言六
execute if score temp.condition data matches 6 if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7恭喜！居然解锁了所有的成就！§8(1/2)"}]}
execute if score temp.condition data matches 6 if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7那么敬请期待本图的续篇《冒险世界：筑梦》吧~§8(2/2)"}]}

# NPC 动作
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=6,aw:animation="none"}] aw:animation_speak
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=6,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
execute if score temp.condition data matches 1..3 if score timeline time matches 1.. run scoreboard players set timeline active 1
execute if score temp.condition data matches 1..3 if score timeline time matches 1.. run function aw/lib/modify_data/timeline/disable_time_lapse

execute if score temp.condition data matches 4..5 if score timeline time matches 61.. run scoreboard players set timeline active 1
execute if score temp.condition data matches 4..5 if score timeline time matches 61.. run function aw/lib/modify_data/timeline/disable_time_lapse
