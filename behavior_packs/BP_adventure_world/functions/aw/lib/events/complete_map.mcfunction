# ===== 完成一次地图 =====
# 用于在试炼结束后执行，标记并获取一些必要信息。
# 调用此方法时：无需修饰。

# 获取或修改数据
    ## 获取最佳时间
        execute if score hasCheat data matches 0 run function aw/lib/get_data/best_time
    ## 获取分数
        execute if score playerAmount data matches 1 run function aw/lib/get_data/score
    ## 增加一次通关记录
        execute if score hasCheat data matches 0 run scoreboard players add mapCompletedTimes record 1
    ## 记录通关时的数据
        scoreboard players operation difficulty record = difficulty settings
        scoreboard players operation playerAmount record = playerAmount data
        scoreboard players operation failedCount record = failedCount.allLevels data
        scoreboard players operation potionUsed record = potionUsed data
        scoreboard players operation playedMinute record = playedMinute time
        scoreboard players operation playedSecond record = playedSecond time
        scoreboard players operation hasCheat record = hasCheat data
    ## 如果有玩家开启了创造，警告之
        execute if score hasCheat data matches 1 run tellraw @a {"rawtext":[{"translate":"§8本次游戏有人开启了创造模式，因此本次不会获得任何成就和纪录！"}]}
    ## 获取成就
        ## (1) 无作弊通关，(2) 成就未获取，(3) 单人通关 -> 神剑的恩惠（单人）
            execute if score hasCheat data matches 0 if score achievement.singlePlayer.finishMap record matches 0 if score playerAmount data matches 1 run function aw/lib/achievements/singleplayer/finish_map
        ## (1) 无作弊通关，(2) 成就未获取，(3) 单人通关，(4) 死亡数 = 0 -> 让田英睡觉去吧！（单人）
            execute if score hasCheat data matches 0 if score achievement.singlePlayer.neverDied record matches 0 if score playerAmount data matches 1 if entity @a[scores={deathCount=0}] run function aw/lib/achievements/singleplayer/never_died
        ## (1) 无作弊通关，(2) 成就未获取，(3) 单人通关，(4) 分数 >= 106（S评级） -> 出神入化（单人）
            execute if score hasCheat data matches 0 if score achievement.singlePlayer.getSGrade record matches 0 if score playerAmount data matches 1 if score score record matches 106.. run function aw/lib/achievements/singleplayer/get_s_grade
        ## (1) 无作弊通关，(2) 成就未获取，(3) 单人通关，(4) 分钟数 < 45 -> 别挡道，我很急！（单人）
            execute if score hasCheat data matches 0 if score achievement.singlePlayer.speedrun record matches 0 if score playerAmount data matches 1 if score playedMinute time matches ..44 run function aw/lib/achievements/singleplayer/speedrun
        ## (1) 无作弊通关，(2) 成就未获取，(3) 单人通关，(4) 击杀骷髅数 >= 60 -> 狙击手的对决（单人）
            execute if score hasCheat data matches 0 if score achievement.singlePlayer.sniperDuel record matches 0 if score playerAmount data matches 1 if score skeletonShotAmount data matches 60.. run function aw/lib/achievements/singleplayer/sniper_duel
        ## (1) 无作弊通关，(2) 成就未获取，(3) 多人通关 -> 齐心协力（多人）
            execute if score hasCheat data matches 0 if score achievement.multiPlayer.finishMap record matches 0 if score playerAmount data matches 2.. run function aw/lib/achievements/multiplayer/finish_map
        ## (1) 无作弊通关，(2) 成就未获取，(3) 多人通关，(4) 团灭数 = 0 -> 人多力量大（多人）
            execute if score hasCheat data matches 0 if score achievement.multiPlayer.neverDied record matches 0 if score playerAmount data matches 2.. if score failedCount.allLevels data matches 0 run function aw/lib/achievements/multiplayer/never_died
        ## (1) 无作弊通关，(2) 成就未获取，(3) 多人通关，(4) 检查到有击杀数 < 50 的玩家 -> 躺赢（多人）
            execute if score hasCheat data matches 0 if score achievement.multiPlayer.killLessThan50 record matches 0 if score playerAmount data matches 2.. if entity @a[scores={killCount=..50}] run function aw/lib/achievements/multiplayer/kill_less_than_50
        ## (1) 无作弊通关，(2) 成就未获取，(3) 多人通关，(4) 难度 = 4 -> 挑战极限（多人）
            execute if score hasCheat data matches 0 if score achievement.multiPlayer.difficulty4 record matches 0 if score playerAmount data matches 2.. if score difficulty settings matches 4 run function aw/lib/achievements/multiplayer/difficulty_4
        ## (1) 无作弊通关，(2) 成就未获取，(3) 多人通关，(4) 分钟数 < 45 -> 势如破竹（多人）
            execute if score hasCheat data matches 0 if score achievement.multiPlayer.speedrun record matches 0 if score playerAmount data matches 2.. if score playedMinute time matches ..44 run function aw/lib/achievements/multiplayer/speedrun

# 播放标题
    titleraw @a times 20 100 20
    titleraw @a title {"rawtext":[{"translate":"§l感 谢 您 的 游 玩 ！"}]}
    titleraw @a subtitle {"rawtext":[{"translate":"Thanks for your playing!"}]}
    execute as @a at @s run playsound random.levelup @s ~~~ 1 0.75
