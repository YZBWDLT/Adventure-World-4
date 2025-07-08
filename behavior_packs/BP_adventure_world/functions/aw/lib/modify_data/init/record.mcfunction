# ===== 记录数据重置 =====
# 重置游戏记录数据到默认值下。
# 调用此方法时：无需修饰。

# 成就
    ## 单人
        ### 神剑的恩惠
            scoreboard players set achievement.singlePlayer.finishMap record 0
        ### 让田英睡觉去吧！
            scoreboard players set achievement.singlePlayer.neverDied record 0
        ### 挑战自我
            scoreboard players set achievement.singlePlayer.difficulty2 record 0
        ### 举步维艰
            scoreboard players set achievement.singlePlayer.difficulty3 record 0
        ### 这不可能！
            scoreboard players set achievement.singlePlayer.difficulty4 record 0
        ### 别挡道，我很急！
            scoreboard players set achievement.singlePlayer.speedrun record 0
        ### 纯天然
            scoreboard players set achievement.singlePlayer.noPotion record 0
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
        ### 全靠我带飞
            scoreboard players set achievement.multiPlayer.killMoreThan200 record 0
# 统计
    ## 地图通关次数
        scoreboard players set mapCompletedTimes record 0
    ## 分数
        ### 本次试炼的分数
            scoreboard players set score record 0
        ### 最佳分数（难度 1）
            scoreboard players set bestScore.difficulty1 record 0
        ### 最佳分数（难度 2）
            scoreboard players set bestScore.difficulty2 record 0
        ### 最佳分数（难度 3）
            scoreboard players set bestScore.difficulty3 record 0
        ### 最佳分数（难度 4）
            scoreboard players set bestScore.difficulty4 record 0
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
