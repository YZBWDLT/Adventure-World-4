# ===== 剧情：比翼鸟 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 选定条件 ---

## 第 1 句话

### 留言一（默认）
execute if score timeline time matches 1 run scoreboard players set temp.condition data 1
### 留言二（难度2~3，单人）
execute if score timeline time matches 1 if score playerAmount record matches 1 if score difficulty record matches 2..3 run scoreboard players set temp.condition data 2
### 留言三（难度4，单人）
execute if score timeline time matches 1 if score playerAmount record matches 1 if score difficulty record matches 4 run scoreboard players set temp.condition data 3
### 留言四（单人，F~D评级）
execute if score timeline time matches 1 if score playerAmount record matches 1 if score score record matches 0..60 run scoreboard players set temp.condition data 4
### 留言五（单人，S评级）
execute if score timeline time matches 1 if score playerAmount record matches 1 if score score record matches 106.. run scoreboard players set temp.condition data 5
### 留言六（多人）
execute if score timeline time matches 1 if score playerAmount record matches 2.. run scoreboard players set temp.condition data 6
### 留言七（难度2~3，多人）
execute if score timeline time matches 1 if score playerAmount record matches 2.. if score difficulty record matches 2..3 run scoreboard players set temp.condition data 7
### 留言八（难度4，多人）
execute if score timeline time matches 1 if score playerAmount record matches 2.. if score difficulty record matches 4 run scoreboard players set temp.condition data 8
### 留言九（作弊）
execute if score timeline time matches 1 if score hasCheat record matches 1 run scoreboard players set temp.condition data 9

## 第 2 句话

### 留言一（默认）
execute if score timeline time matches 60 run scoreboard players set temp.condition data 1
### 留言二（剧情模式）
execute if score timeline time matches 60 if score storyMode settings matches 1 run scoreboard players set temp.condition data 2

# --- 剧情 ---

## 第 1 句话
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=9,aw:animation="none"}] aw:animation_speak

### 留言一
execute if score timeline time matches 1 if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7感谢你的努力~接下来向着更高的目标进发如何呢~？§8(1/2)"}]}
### 留言二
execute if score timeline time matches 1 if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7很厉害呢！时间和成绩会奖励努力的你！§8(1/2)"}]}
### 留言三
execute if score timeline time matches 1 if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7真是难以置信……你就是上古的林乐本人吧？§8(1/2)"}]}
### 留言四
execute if score timeline time matches 1 if score temp.condition data matches 4 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7没关系的，能走到这里已经是很了不起的了，不用管小鼠的反应~§8(1/2)"}]}
### 留言五
execute if score timeline time matches 1 if score temp.condition data matches 5 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7我已经没有更高的评价能称赞你了，谢谢你体验我们的地图！§8(1/2)"}]}
### 留言六
execute if score timeline time matches 1 if score temp.condition data matches 6 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7有勇无谋难成大事，智勇双全方为英雄。这句话送给你们或许正好哦。§8(1/2)"}]}
### 留言七
execute if score timeline time matches 1 if score temp.condition data matches 7 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7坚定不移地保持这样的友谊吧，希望在远方的新战场也能看到你们的英姿！§8(1/2)"}]}
### 留言八
execute if score timeline time matches 1 if score temp.condition data matches 8 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7出神入化……出神入化……这样的默契我想真的是世上难得的了！§8(1/2)"}]}
### 留言九
execute if score timeline time matches 1 if score temp.condition data matches 9 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7太难了吗？没事的，多练一练，下次争取不用创造~§8(1/2)"}]}

## 第 2 句话
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=9,aw:animation="none"}] aw:animation_speak

### 留言一
execute if score timeline time matches 60 if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7挑战一下更快通关、一命通关甚至无药通关怎样呢？或许你会听到更多独特的评语哦！§8(2/2)"}]}
### 留言二
execute if score timeline time matches 60 if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7准备好迎接新的试炼了吗？续篇《冒险世界：筑（噩）梦》正在制作中，敬请期待哦！§8(2/2)"}]}

# --- 剧情结束 ---
execute if score timeline time matches 61.. run scoreboard players set timeline active 1
execute if score timeline time matches 61.. run function aw/lib/modify_data/timeline/disable_time_lapse
