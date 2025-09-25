# ===== 显示统计信息 =====

# 结算数据
    ## 通用
        tellraw @a {"rawtext":[{"translate":"§l===== 结算数据 =====\n"}]}
        tellraw @a {"rawtext":[{"translate":"难度等级 | §a%%s§8/4","with":{"rawtext":[{"score":{"objective":"record","name":"difficulty"}}]}}]}
        tellraw @a {"rawtext":[{"translate":"试炼时长 | §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"playedMinute"}},{"score":{"objective":"record","name":"playedSecond"}}]}}]}
        execute as @a at @s run tellraw @s {"rawtext":[{"translate":"击杀数 | §a%%s","with":{"rawtext":[{"score":{"objective":"killCount","name":"@s"}}]}}]}
        execute as @a at @s run tellraw @s {"rawtext":[{"translate":"死亡次数 | §a%%s","with":{"rawtext":[{"score":{"objective":"deathCount","name":"@s"}}]}}]}
    ## 单人模式
        execute if score playerAmount record matches 1 if score potionUsed record matches 0 run tellraw @a {"rawtext":[{"translate":"是否使用过药水 | §a否"}]}
        execute if score playerAmount record matches 1 if score potionUsed record matches 1 run tellraw @a {"rawtext":[{"translate":"是否使用过药水 | §a是"}]}
    ## 多人模式
        execute if score playerAmount record matches 2.. run tellraw @a {"rawtext":[{"translate":"玩家人数 | §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"playerAmount"}}]}}]}

# 综合评价（仅单人模式）
    execute if score playerAmount record matches 1 run tellraw @a {"rawtext":[{"translate":"§l===== 综合评价 =====\n"}]}
    execute if score playerAmount record matches 1 if score score record matches 120.. run tellraw @a {"rawtext":[{"translate":"评价等级 | §bS \n还是PVE大佬？！！"}]}
    execute if score playerAmount record matches 1 if score score record matches 95..119 run tellraw @a {"rawtext":[{"translate":"评价等级 | §aA \n太赞啦！你的PVE有一手！"}]}
    execute if score playerAmount record matches 1 if score score record matches 75..94 run tellraw @a {"rawtext":[{"translate":"评价等级 | §3B \n不错哦！减少死亡次数或降低时长或许有助于你提高评价！"}]}
    execute if score playerAmount record matches 1 if score score record matches 60..74 run tellraw @a {"rawtext":[{"translate":"评价等级 | §eC \n还可以！也许是时长或死亡严重拖累了你...多练练就好啦~"}]}
    execute if score playerAmount record matches 1 if score score record matches 50..59 run tellraw @a {"rawtext":[{"translate":"评价等级 | §6D \n这个地图可能对你稍微有些挑战性...多练练这张地图来提升你的PVE吧！"}]}
    execute if score playerAmount record matches 1 if score score record matches 40..49 run tellraw @a {"rawtext":[{"translate":"评价等级 | §cE \n您的PVE水平还有待精进呀，勇气贤者sama~"}]}
    execute if score playerAmount record matches 1 if score score record matches 0..39 run tellraw @a {"rawtext":[{"translate":"评价等级 | §4F \n......qwq"}]}
    execute if score playerAmount record matches 1 if score score record matches -1 run tellraw @a {"rawtext":[{"translate":"评价等级 | §7F- \n别以为我不知道！你作弊了！！(/°□°)/︵┻━┻"}]}

# 记录数据
    ## 通用
        tellraw @a {"rawtext":[{"translate":"§l===== 记录数据 =====\n"}]}
        tellraw @a {"rawtext":[{"translate":"通关次数 | §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"mapCompletedTimes"}}]}}]}
    ## 单人模式
        execute if score playerAmount record matches 1 run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（单人难度1） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty1.minute"}},{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty1.second"}}]}}]}
        execute if score playerAmount record matches 1 run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（单人难度2） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty2.minute"}},{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty2.second"}}]}}]}
        execute if score playerAmount record matches 1 run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（单人难度3） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty3.minute"}},{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty3.second"}}]}}]}
        execute if score playerAmount record matches 1 run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（单人难度4） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty4.minute"}},{"score":{"objective":"record","name":"bestTime.singlePlayer.difficulty4.second"}}]}}]}
    ## 多人模式
        execute if score playerAmount record matches 2.. run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（多人难度1） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty1.minute"}},{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty1.second"}}]}}]}
        execute if score playerAmount record matches 2.. run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（多人难度2） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty2.minute"}},{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty2.second"}}]}}]}
        execute if score playerAmount record matches 2.. run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（多人难度3） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty3.minute"}},{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty3.second"}}]}}]}
        execute if score playerAmount record matches 2.. run tellraw @a {"rawtext":[{"translate":"最佳通关记录 §8（多人难度4） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty4.minute"}},{"score":{"objective":"record","name":"bestTime.multiPlayer.difficulty4.second"}}]}}]}

# 击杀榜（仅多人模式）
    execute if score playerAmount record matches 2.. run tellraw @a {"rawtext":[{"translate":"§l===== 击杀数 =====\n"}]}
    execute if score playerAmount record matches 2.. as @a run tellraw @a {"rawtext":[{"translate":"%%s §8（击杀） §f| §a%%s","with":{"rawtext":[{"selector":"@s"},{"score":{"objective":"killCount","name":"@s"}}]}}]}
# 死亡榜（仅多人模式）
    execute if score playerAmount record matches 2.. run tellraw @a {"rawtext":[{"translate":"§l===== 死亡数 =====\n"}]}
    execute if score playerAmount record matches 2.. as @a run tellraw @a {"rawtext":[{"translate":"%%s §8（死亡） §f| §a%%s","with":{"rawtext":[{"selector":"@s"},{"score":{"objective":"deathCount","name":"@s"}}]}}]}
