# ===== 获取最佳时间 =====
# 用于在试炼结束后判断并设置最佳时间。
# 调用此方法时：需修饰为未作弊时执行（execute if score hasCheat data matches 0 ...）。

# 单人模式下
    ## 难度 1
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 1 if score bestTime.singlePlayer.difficulty1.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty1.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 1 if score bestTime.singlePlayer.difficulty1.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty1.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 1 if score bestTime.singlePlayer.difficulty1.minute record = playedMinute time if score bestTime.singlePlayer.difficulty1.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty1.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 1 if score bestTime.singlePlayer.difficulty1.minute record = playedMinute time if score bestTime.singlePlayer.difficulty1.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty1.second record = playedSecond time
    ## 难度 2
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 2 if score bestTime.singlePlayer.difficulty2.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty2.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 2 if score bestTime.singlePlayer.difficulty2.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty2.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 2 if score bestTime.singlePlayer.difficulty2.minute record = playedMinute time if score bestTime.singlePlayer.difficulty2.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty2.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 2 if score bestTime.singlePlayer.difficulty2.minute record = playedMinute time if score bestTime.singlePlayer.difficulty2.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty2.second record = playedSecond time
    ## 难度 3
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 3 if score bestTime.singlePlayer.difficulty3.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty3.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 3 if score bestTime.singlePlayer.difficulty3.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty3.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 3 if score bestTime.singlePlayer.difficulty3.minute record = playedMinute time if score bestTime.singlePlayer.difficulty3.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty3.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 3 if score bestTime.singlePlayer.difficulty3.minute record = playedMinute time if score bestTime.singlePlayer.difficulty3.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty3.second record = playedSecond time
    ## 难度 4
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 4 if score bestTime.singlePlayer.difficulty4.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty4.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 4 if score bestTime.singlePlayer.difficulty4.minute record > playedMinute time run scoreboard players operation bestTime.singlePlayer.difficulty4.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 1 if score difficulty settings matches 4 if score bestTime.singlePlayer.difficulty4.minute record = playedMinute time if score bestTime.singlePlayer.difficulty4.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty4.minute record = playedMinute time
            execute if score playerAmount data matches 1 if score difficulty settings matches 4 if score bestTime.singlePlayer.difficulty4.minute record = playedMinute time if score bestTime.singlePlayer.difficulty4.second record > playedSecond time run scoreboard players operation bestTime.singlePlayer.difficulty4.second record = playedSecond time
# 多人模式下
    ## 难度 1
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 1 if score bestTime.multiPlayer.difficulty1.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty1.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 1 if score bestTime.multiPlayer.difficulty1.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty1.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 1 if score bestTime.multiPlayer.difficulty1.minute record = playedMinute time if score bestTime.multiPlayer.difficulty1.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty1.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 1 if score bestTime.multiPlayer.difficulty1.minute record = playedMinute time if score bestTime.multiPlayer.difficulty1.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty1.second record = playedSecond time
    ## 难度 2
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 2 if score bestTime.multiPlayer.difficulty2.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty2.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 2 if score bestTime.multiPlayer.difficulty2.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty2.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 2 if score bestTime.multiPlayer.difficulty2.minute record = playedMinute time if score bestTime.multiPlayer.difficulty2.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty2.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 2 if score bestTime.multiPlayer.difficulty2.minute record = playedMinute time if score bestTime.multiPlayer.difficulty2.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty2.second record = playedSecond time
    ## 难度 3
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 3 if score bestTime.multiPlayer.difficulty3.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty3.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 3 if score bestTime.multiPlayer.difficulty3.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty3.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 3 if score bestTime.multiPlayer.difficulty3.minute record = playedMinute time if score bestTime.multiPlayer.difficulty3.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty3.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 3 if score bestTime.multiPlayer.difficulty3.minute record = playedMinute time if score bestTime.multiPlayer.difficulty3.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty3.second record = playedSecond time
    ## 难度 4
        ### 记录的分钟数大于游玩分钟数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 4 if score bestTime.multiPlayer.difficulty4.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty4.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 4 if score bestTime.multiPlayer.difficulty4.minute record > playedMinute time run scoreboard players operation bestTime.multiPlayer.difficulty4.second record = playedSecond time
        ### 记录的分钟数等于游玩分钟数时，若记录的秒数大于游玩秒数时，直接更改所有的时间值
            execute if score playerAmount data matches 2.. if score difficulty settings matches 4 if score bestTime.multiPlayer.difficulty4.minute record = playedMinute time if score bestTime.multiPlayer.difficulty4.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty4.minute record = playedMinute time
            execute if score playerAmount data matches 2.. if score difficulty settings matches 4 if score bestTime.multiPlayer.difficulty4.minute record = playedMinute time if score bestTime.multiPlayer.difficulty4.second record > playedSecond time run scoreboard players operation bestTime.multiPlayer.difficulty4.second record = playedSecond time
