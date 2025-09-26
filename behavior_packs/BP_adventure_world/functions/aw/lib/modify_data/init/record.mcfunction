# ===== 记录数据重置 =====
# 重置游戏记录数据到默认值下。
# 调用此方法时：无需修饰。

# 成就
    ## 单人
        ### 神剑的恩惠
            scoreboard players set achievement.singlePlayer.finishMap record 0
        ### 出神入化
            scoreboard players set achievement.singlePlayer.getSGrade record 0
        ### 让田英睡觉去吧！
            scoreboard players set achievement.singlePlayer.neverDied record 0
        ### 狙击手的对决
            scoreboard players set achievement.singlePlayer.sniperDuel record 0
        ### 别挡道，我很急！
            scoreboard players set achievement.singlePlayer.speedrun record 0
    ## 多人
        ### 齐心协力
            scoreboard players set achievement.multiPlayer.finishMap record 0
        ### 人多力量大
            scoreboard players set achievement.multiPlayer.neverDied record 0
        ### 挑战极限
            scoreboard players set achievement.multiPlayer.difficulty4 record 0
        ### 势如破竹
            scoreboard players set achievement.multiPlayer.speedrun record 0
        ### 躺赢
            scoreboard players set achievement.multiPlayer.killLessThan50 record 0
    ## 关卡
        ### 别问，问就是陷阱
            scoreboard players set achievement.noTrap record 0
        ### 全身而退
            scoreboard players set achievement.noHurt1 record 0
        ### 全身而退 II
            scoreboard players set achievement.noHurt2 record 0
        ### 身轻如燕
            scoreboard players set achievement.noLeatherBoots record 0
        ### 我以为挂机池呢
            scoreboard players set achievement.noMonsterKilled record 0
        ### 太亢奋了
            scoreboard players set achievement.killBossRapidly record 0
        ### 闪避点满
            scoreboard players set achievement.notFired record 0
        ### 出师未捷身先死
            scoreboard players set achievement.failAtFirst record 0
        ### 让开，这里归我了！
            scoreboard players set achievement.layInCoffin record 0
        ### 骷髅王的宝藏
            scoreboard players set achievement.getTreasure record 0
        ### 躲这里不错
            scoreboard players set achievement.findButton1 record 0
        ### 上房揭瓦
            scoreboard players set achievement.findButton2 record 0
        ### 耐砸王
            scoreboard players set achievement.explode3Times record 0
        ### 还是跑酷大佬
            scoreboard players set achievement.parkour record 0
# 统计
    ## 通关数据
        ### 地图通关次数
            scoreboard players set mapCompletedTimes record 0
        ### 通关时是否有玩家使用过主药水或副药水，0：没有，1：有
            scoreboard players set potionUsed record 0
        ### 通关时的难度
            scoreboard players set difficulty record 1
        ### 通关时是否有人作弊，0：无，1：有
            scoreboard players set hasCheat record 0
        ### 通关时的玩家人数
            scoreboard players set playerAmount record 1
        ### 通关时的失败次数
            scoreboard players set failedCount record 0
        ### 通关时的游玩分钟数
            scoreboard players set playedMinute record 1
        ### 通关时的游玩秒数
            scoreboard players set playedSecond record 0
        ### 本次试炼的分数
            scoreboard players set score record 0
    ## 最佳时间
        ## 单人模式的最佳游戏时间（难度 1，单位：秒）
            scoreboard players set bestTime.singlePlayer.difficulty1.second record 59
        ## 单人模式的最佳游戏时间（难度 1，单位：分钟）
            scoreboard players set bestTime.singlePlayer.difficulty1.minute record 9999
        ## 单人模式的最佳游戏时间（难度 2，单位：秒）
            scoreboard players set bestTime.singlePlayer.difficulty2.second record 59
        ## 单人模式的最佳游戏时间（难度 2，单位：分钟）
            scoreboard players set bestTime.singlePlayer.difficulty2.minute record 9999
        ## 单人模式的最佳游戏时间（难度 3，单位：秒）
            scoreboard players set bestTime.singlePlayer.difficulty3.second record 59
        ## 单人模式的最佳游戏时间（难度 3，单位：分钟）
            scoreboard players set bestTime.singlePlayer.difficulty3.minute record 9999
        ## 单人模式的最佳游戏时间（难度 4，单位：秒）
            scoreboard players set bestTime.singlePlayer.difficulty4.second record 59
        ## 单人模式的最佳游戏时间（难度 4，单位：分钟）
            scoreboard players set bestTime.singlePlayer.difficulty4.minute record 9999
        ## 多人模式的最佳游戏时间（难度 1，单位：秒）
            scoreboard players set bestTime.multiPlayer.difficulty1.second record 59
        ## 多人模式的最佳游戏时间（难度 1，单位：分钟）
            scoreboard players set bestTime.multiPlayer.difficulty1.minute record 9999
        ## 多人模式的最佳游戏时间（难度 2，单位：秒）
            scoreboard players set bestTime.multiPlayer.difficulty2.second record 59
        ## 多人模式的最佳游戏时间（难度 2，单位：分钟）
            scoreboard players set bestTime.multiPlayer.difficulty2.minute record 9999
        ## 多人模式的最佳游戏时间（难度 3，单位：秒）
            scoreboard players set bestTime.multiPlayer.difficulty3.second record 59
        ## 多人模式的最佳游戏时间（难度 3，单位：分钟）
            scoreboard players set bestTime.multiPlayer.difficulty3.minute record 9999
        ## 多人模式的最佳游戏时间（难度 4，单位：秒）
            scoreboard players set bestTime.multiPlayer.difficulty4.second record 59
        ## 多人模式的最佳游戏时间（难度 4，单位：分钟）
            scoreboard players set bestTime.multiPlayer.difficulty4.minute record 9999
