# ===== 获取成就 =====
# 用于在试炼结束后获取进度。
# 调用此方法时：无需修饰。

# 单人模式
    ## 神剑的恩惠 - 通过剑之试炼
        execute if score playerAmount data matches 1 if score achievement.singlePlayer.finishMap record matches 0 run function aw/lib/achievements/singleplayer/finish_map
    ## 让田英睡觉去吧！ - 不死亡通过剑之试炼
        execute if score playerAmount data matches 1 if score @a[c=1] deathCount matches 0 if score achievement.singlePlayer.neverDied record matches 0 run function aw/lib/achievements/singleplayer/never_died
    ## 挑战自我 - 通过 2 级或更高难度的试炼
        execute if score playerAmount data matches 1 if score extraDifficulty settings matches 1..3 if score achievement.singlePlayer.difficulty2 record matches 0 run function aw/lib/achievements/singleplayer/difficulty_2
    ## 举步维艰 - 通过 3 级或更高难度的试炼
        execute if score playerAmount data matches 1 if score extraDifficulty settings matches 2..3 if score achievement.singlePlayer.difficulty3 record matches 0 run function aw/lib/achievements/singleplayer/difficulty_3
    ## 这不可能！ - 通过 4 级难度的试炼
        execute if score playerAmount data matches 1 if score extraDifficulty settings matches 3 if score achievement.singlePlayer.difficulty4 record matches 0 run function aw/lib/achievements/singleplayer/difficulty_4
    ## 别挡道，我很急！ - 在 45 分钟内通过试炼
        execute if score playerAmount data matches 1 if score playedMinute time matches ..45 if score achievement.singlePlayer.speedrun record matches 0 run function aw/lib/achievements/singleplayer/speedrun
    ## 纯天然 - 全程除了治疗药水之外，不使用其他药水通过试炼
        execute if score playerAmount data matches 1 if score potionUsed data matches 0 if score achievement.singlePlayer.noPotion record matches 0 run function aw/lib/achievements/singleplayer/no_potion

# 多人模式
    ## 齐心协力 - 通过剑之试炼
        execute if score playerAmount data matches 2.. if score achievement.multiPlayer.finishMap record matches 0 run function aw/lib/achievements/multiplayer/finish_map
    ## 人多力量大 - 不团灭通过剑之试炼
        execute if score playerAmount data matches 2.. if score failedCount.allLevels data matches 0 if score achievement.multiPlayer.neverDied record matches 0 run function aw/lib/achievements/multiplayer/never_died
    ## 躺赢 - 有玩家的击杀数小于50
        execute if score playerAmount data matches 2.. if entity @a[scores={killCount=..50}] if score achievement.multiPlayer.killLessThan50 record matches 0 run function aw/lib/achievements/multiplayer/kill_less_than_50
    ## 全靠我带飞 - 有玩家的击杀数大于200
        execute if score playerAmount data matches 2.. if entity @a[scores={killCount=200..}] if score achievement.multiPlayer.killMoreThan200 record matches 0 run function aw/lib/achievements/multiplayer/kill_more_than_200
    ## 挑战极限 - 通过4级难度的试炼
        execute if score playerAmount data matches 2.. if score difficulty settings matches 4 if score achievement.multiPlayer.difficulty4 record matches 0 run function aw/lib/achievements/multiplayer/difficulty_4
    ## 势如破竹 - 在45分钟内通过试炼
        execute if score playerAmount data matches 2.. if score playedMinute time matches ..45 if score achievement.multiPlayer.speedrun record matches 0 run function aw/lib/achievements/multiplayer/speedrun
