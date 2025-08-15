# ===== 完成一次地图 =====
# 用于在试炼结束后执行，标记并获取一些必要信息。
# 调用此方法时：无需修饰。

# 获取或修改数据
    ## 获取成就
        execute if score hasCheat data matches 0 run function aw/lib/achievements/get
    ## 获取最佳时间
        execute if score hasCheat data matches 0 run function aw/lib/get_data/best_time
    ## 获取分数
        execute if score playerAmount data matches 1 run function aw/lib/get_data/score
        execute if score playerAmount data matches 2.. run scoreboard players set score record -2
    ## 增加一次通关记录
        execute if score hasCheat data matches 0 run scoreboard players add mapCompletedTimes record 1
    ## 如果有玩家开启了创造，警告之
        execute if score hasCheat data matches 1 run tellraw @a {"rawtext":[{"translate":"§8本次游戏有人开启了创造模式，因此本次不会获得任何成就和纪录！"}]}

# 播放标题
    titleraw @a times 20 100 20
    titleraw @a title {"rawtext":[{"translate":"§l感 谢 您 的 游 玩 ！"}]}
    titleraw @a subtitle {"rawtext":[{"translate":"Thanks for your playing!"}]}
    execute as @a at @s run playsound random.levelup @s ~~~ 1 0.75
