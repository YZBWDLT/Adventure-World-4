# ===== 玩家使用退出 =====

# 停止执行标记
scoreboard players set temp.breakFlag data 0

# 满足以下条件时，阻止触发

## 当玩家在非试炼时使用
execute if score temp.breakFlag data matches 0 if score chapter data matches !1..7 run tellraw @s {"rawtext":[{"translate":"§c无法在试炼外使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score chapter data matches !1..7 run scoreboard players set temp.breakFlag data 1

## 当玩家在关卡未完成时使用
execute if score temp.breakFlag data matches 0 if score levelCompleted data matches 0 run tellraw @s {"rawtext":[{"translate":"§c无法在关卡进行时使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score levelCompleted data matches 0 run scoreboard players set temp.breakFlag data 1

## 当玩家在暂停时使用
execute if score temp.breakFlag data matches 0 if score pausing data matches 1 run tellraw @s {"rawtext":[{"translate":"§c无法在暂停时使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score pausing data matches 1 run scoreboard players set temp.breakFlag data 1

## 当玩家在被管理员禁止使用时使用
execute if score temp.breakFlag data matches 0 if entity @s[tag=cannotQuit] run tellraw @s {"rawtext":[{"translate":"§c管理员已禁止你使用此物品"}]}
execute if score temp.breakFlag data matches 0 if entity @s[tag=cannotQuit] run scoreboard players set temp.breakFlag data 1

## 当玩家在一周目时使用
execute if score temp.breakFlag data matches 0 if score mapCompletedTimes record matches 0 run tellraw @s {"rawtext":[{"translate":"§c无法在暂停时使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score mapCompletedTimes record matches 0 run scoreboard players set temp.breakFlag data 1

## 当玩家在某些特定禁止情况下使用
execute if score temp.breakFlag data matches 0 if score allowQuit data matches 0 run tellraw @s {"rawtext":[{"translate":"§c你现在不能使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score allowQuit data matches 0 run scoreboard players set temp.breakFlag data 1

# 否则，触发暂停功能，并在多人下通告全体谁使用了暂停
execute if score temp.breakFlag data matches 0 if score playerAmount data matches 2.. run tellraw @a {"rawtext":[{"translate":"§a%%s 使用了退出试炼，请全体玩家进行选择......","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score temp.breakFlag data matches 0 run function aw/levels/pause/start

# 移除临时变量
scoreboard players reset temp.breakFlag data
