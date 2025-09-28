# ===== 事件：玩家复活 =====
# 当玩家复活时执行的命令
# 调用此方法时：需修饰执行者为旁观玩家，执行位置为该关卡的重生点位置（execute as @s[scores={spectator=!0}] positioned (本关重生点)）。

# 传送玩家
    tp @s ~~~
# 复活已死亡玩家
    gamemode adventure @s
    scoreboard players set @s[scores={spectator=!2}] spectator 0
# 将玩家回满血
    effect @s clear
    effect @s instant_health 1 20 true
