# ===== 剧情：帕 =====

# --- 选定条件 ---

# 留言一（默认）
scoreboard players set temp.condition data 1
# 留言二（单人，难度1，死亡次数=0或难度2，3或S评分）
execute if score playerAmount record matches 1 if score difficulty record matches 1 if entity @a[scores={deathCount=0}] run scoreboard players set temp.condition data 2
execute if score playerAmount record matches 1 if score difficulty record matches 2..3 run scoreboard players set temp.condition data 2
execute if score playerAmount record matches 1 if score score record matches 106.. run scoreboard players set temp.condition data 2
# 留言三（单人，难度2或3，不使用药水）
execute if score playerAmount record matches 1 if score difficulty record matches 2..3 if score potionUsed record matches 0 run scoreboard players set temp.condition data 3
# 留言四（单人，难度4，死亡次数≥1）
execute if score playerAmount record matches 1 if score difficulty record matches 4 if entity @a[scores={deathCount=1..}] run scoreboard players set temp.condition data 4
# 留言五（单人，难度4，死亡次数=0）
execute if score playerAmount record matches 1 if score difficulty record matches 4 if entity @a[scores={deathCount=0}] run scoreboard players set temp.condition data 5
# 留言六（单人，难度4，不使用药水）
execute if score playerAmount record matches 1 if score difficulty record matches 4 if score potionUsed record matches 0 run scoreboard players set temp.condition data 6
# 留言七（多人）
execute if score playerAmount record matches 2.. run scoreboard players set temp.condition data 7
# 留言八（多人，集体失败次数=0或通关难度4）
execute if score playerAmount record matches 2.. if score failedCount record matches 0 run scoreboard players set temp.condition data 8
execute if score playerAmount record matches 2.. if score difficulty record matches 4 run scoreboard players set temp.condition data 8
# 留言九（双人通关难度4）
execute if score playerAmount record matches 2 if score difficulty record matches 4 run scoreboard players set temp.condition data 9
# 留言十（作弊）
execute if score hasCheat record matches 1 run scoreboard players set temp.condition data 10

# --- 剧情 ---

# 留言一
execute if score temp.condition data matches 1 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜你通过此次试炼！可以的话尝试考虑更高的难度吧！"}]}
# 留言二
execute if score temp.condition data matches 2 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜，你的PVE技术合格啦~"}]}
# 留言三
execute if score temp.condition data matches 3 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7据说这个比单人通关难度4要难一些......我不知道我瞎猜的~"}]}
# 留言四
execute if score temp.condition data matches 4 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7敢打这个也挺有勇气的了......话说你是林乐本人嘛，下次要不要同时让田英睡个觉（0死亡）（bushi"}]}
# 留言五
execute if score temp.condition data matches 5 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7能看到这段对话的人应该很少吧（？）厉害哒！相信你已经可以秒杀绝大部分的pve地图了awa§8§o（在7-5更新之前我甚至还设置了四级难度0死亡无药通关的特殊对话，可是这个现在几乎不可能了，所以把“0死亡”的前置触发条件删了qwq）"}]}
# 留言六
execute if score temp.condition data matches 6 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7简直就是个奇迹......！大佬可以分我一点阳寿嘛qwq（这真的比一命4级难多了）"}]}
# 留言七
execute if score temp.condition data matches 7 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7和朋友玩的开心么？希望你们的友谊可以一直持续下去~ awa"}]}
# 留言八
execute if score temp.condition data matches 8 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7你们配合的很默契诶，厉害！"}]}
# 留言九
execute if score temp.condition data matches 9 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7真是天照地合的一对，羡慕了。"}]}
# 留言十
execute if score temp.condition data matches 10 run tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7这于小白来说也许还是有点难，不过多练练总能打出来的，所以下次试试不开创造吧，加油！"}]}

event entity @s[has_property={aw:animation="none"}] aw:animation_speak
