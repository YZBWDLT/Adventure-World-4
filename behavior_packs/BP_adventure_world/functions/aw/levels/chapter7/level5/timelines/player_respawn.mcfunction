# ===== 玩家复活 =====

# 进行复活倒计时
    scoreboard players remove @s[scores={temp.respawnTime=1..}] temp.respawnTime 1
# 设置标题时间
    titleraw @s times 0 40 0
# 倒计时结束前，提示玩家还有多久复活
    titleraw @s[scores={temp.respawnTime=0..}] title {"rawtext":[{"translate":"§1"}]}
    titleraw @s[scores={temp.respawnTime=0..}] subtitle {"rawtext":[{"translate":"§7您将在%%s秒后被解救！","with":{"rawtext":[{"score":{"objective":"temp.respawnTime","name":"@s"}}]}}]}
# 倒计时结束后，复活玩家
    titleraw @s[scores={temp.respawnTime=..0}] title {"rawtext":[{"translate":"§1"}]}
    titleraw @s[scores={temp.respawnTime=..0}] subtitle {"rawtext":[{"translate":"§a您已被解救！"}]}
    give @s[scores={temp.respawnTime=..0}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
    tellraw @s[scores={temp.respawnTime=..0}] {"rawtext":[{"translate":"§7您已被释放并给予一瓶治疗药水，注意安全！"}]}
    execute as @s[scores={temp.respawnTime=..0}] positioned -225 -47 44 run function aw/lib/events/respawn_player
