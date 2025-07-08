# ===== 获取分数 =====
# 用于在试炼结束后获取分数并得到评级。
# 调用此方法时：需指定为 1 人时执行（execute if score playerAmount data matches 1 ...）。

# 初始化
    scoreboard players set score record 0

# 难度加分
    # 难度 | 1  | 2   | 3   | 4   |
    # 加分 | +0 | +10 | +20 | +40 |

    # execute if score difficulty settings matches 1 run scoreboard players add score record 0
    execute if score difficulty settings matches 2 run scoreboard players add score record 10
    execute if score difficulty settings matches 3 run scoreboard players add score record 20
    execute if score difficulty settings matches 4 run scoreboard players add score record 40

# 时长加分（单位：分钟）
    # 时长 | 60  | 60-75 | 75-90 | 90-105 | 105-120 | 120-135 | 135-150 | 150-165 |
    # 加分 | +40 | +35   | +30   | +25    | +20     | +15     | +10     | +5      |

    execute if score playedMinute time matches ..60 run scoreboard players add score record 40
    execute if score playedMinute time matches 61..75 run scoreboard players add score record 35
    execute if score playedMinute time matches 76..90 run scoreboard players add score record 30
    execute if score playedMinute time matches 91..105 run scoreboard players add score record 25
    execute if score playedMinute time matches 106..120 run scoreboard players add score record 20
    execute if score playedMinute time matches 121..135 run scoreboard players add score record 15
    execute if score playedMinute time matches 136..150 run scoreboard players add score record 10
    execute if score playedMinute time matches 151..165 run scoreboard players add score record 5

# 死亡次数加分
    # 死亡 | 0   | 1   | 2-3 | 4-6 | 7-10 | 11-15 |
    # 加分 | +60 | +50 | +40 | +30 | +20  | +10   |

    execute if entity @a[scores={deathCount=0}] run scoreboard players add score record 60
    execute if entity @a[scores={deathCount=1}] run scoreboard players add score record 50
    execute if entity @a[scores={deathCount=2..3}] run scoreboard players add score record 40
    execute if entity @a[scores={deathCount=4..6}] run scoreboard players add score record 30
    execute if entity @a[scores={deathCount=7..10}] run scoreboard players add score record 20
    execute if entity @a[scores={deathCount=11..15}] run scoreboard players add score record 10

# 药水加分
    # 药水 | 使用过 | 未使用过 |
    # 加分 | +0    | +10     |

    execute if score potionUsed data matches 0 run scoreboard players add score record 10

# 若作弊则直接改分数为 -1

    execute if score hasCheat data matches 1 run scoreboard players set score record -1

# 标记最佳分数
    execute if score difficulty settings matches 1 if score score record > bestScore.difficulty1 record run scoreboard players operation bestScore.difficulty1 record = score record
    execute if score difficulty settings matches 2 if score score record > bestScore.difficulty2 record run scoreboard players operation bestScore.difficulty2 record = score record
    execute if score difficulty settings matches 3 if score score record > bestScore.difficulty3 record run scoreboard players operation bestScore.difficulty3 record = score record
    execute if score difficulty settings matches 4 if score score record > bestScore.difficulty4 record run scoreboard players operation bestScore.difficulty4 record = score record
