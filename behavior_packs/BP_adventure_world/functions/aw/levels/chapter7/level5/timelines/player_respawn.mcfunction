# ===== 玩家复活 =====

# 进行复活倒计时
    scoreboard players remove @s[scores={temp.respawnTime=1..}] temp.respawnTime 1
# 设置标题时间
    titleraw @s times 0 40 0
# 倒计时结束前，提示玩家还有多久复活
    titleraw @s[scores={temp.respawnTime=..0}] title {"rawtext":[{"translate":"§1"}]}
    titleraw @s[scores={temp.respawnTime=..0}] subtitle {"rawtext":[{"translate":"§7您将在%%s秒后被解救！","with":{"rawtext":[{"score":{"objective":"temp.respawnTime","name":"@s"}}]}}]}
# 倒计时结束后，复活玩家
    titleraw @s[scores={temp.respawnTime=..0}] title {"rawtext":[{"translate":"§1"}]}
    titleraw @s[scores={temp.respawnTime=..0}] subtitle {"rawtext":[{"translate":"§a您已被解救！"}]}
    execute as @s[scores={temp.respawnTime=..0}] positioned -75 -38 22 run function aw/lib/events/respawn_player
