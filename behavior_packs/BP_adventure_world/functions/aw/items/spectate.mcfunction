# ===== 使用主动旁观物品 =====

# 停止执行标记
scoreboard players set temp.breakFlag data 0
scoreboard players set temp.spectatorAmount data 0

# 满足以下条件时，阻止触发

## 当玩家在非试炼时使用
execute if score temp.breakFlag data matches 0 if score chapter data matches !1..7 run tellraw @s {"rawtext":[{"translate":"§c无法在试炼外使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score chapter data matches !1..7 run scoreboard players set temp.breakFlag data 1

## 当玩家在关卡未完成时使用
execute if score temp.breakFlag data matches 0 if score levelCompleted data matches 0 run tellraw @s {"rawtext":[{"translate":"§c无法在关卡进行时使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score levelCompleted data matches 0 run scoreboard players set temp.breakFlag data 1

## 当玩家在单人情况下使用
execute if score temp.breakFlag data matches 0 if score playerAmount data matches 1 run tellraw @s {"rawtext":[{"translate":"§c无法在单人情况下使用此物品"}]}
execute if score temp.breakFlag data matches 0 if score playerAmount data matches 1 run scoreboard players set temp.breakFlag data 1

# 否则，切换玩家的旁观状态
execute if score temp.breakFlag data matches 0 run scoreboard players add @s spectator 2
execute if score temp.breakFlag data matches 0 if score @s spectator matches 3.. run scoreboard players set @s spectator 0
execute if score temp.breakFlag data matches 0 run tellraw @s[scores={spectator=0}] {"rawtext":[{"translate":"§a已关闭主动旁观"}]}
execute if score temp.breakFlag data matches 0 as @s[scores={spectator=0}] at @s run tellraw @a[rm=0.01] {"rawtext":[{"translate":"§a%%s 关闭了主动旁观","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score temp.breakFlag data matches 0 run tellraw @s[scores={spectator=2}] {"rawtext":[{"translate":"§a已开启主动旁观，在进入关卡后将自动设置为旁观模式"}]}
execute if score temp.breakFlag data matches 0 as @s[scores={spectator=2}] at @s run tellraw @a[rm=0.01] {"rawtext":[{"translate":"§a%%s 开启了主动旁观","with":{"rawtext":[{"selector":"@s"}]}}]}

# 检查主动旁观玩家数量，如果所有玩家都选择就警告
execute as @a[scores={spectator=2}] run scoreboard players add temp.spectatorAmount data 1
execute if score temp.spectatorAmount data = playerAmount data run tellraw @a {"rawtext":[{"translate":"§c警告！你们所有人都选择了主动旁观，请至少留一名玩家参加战斗！"}]}
execute if score temp.spectatorAmount data = playerAmount data as @a at @s run playsound random.anvil_land @s ~~~

# 移除临时变量
scoreboard players reset temp.breakFlag data
