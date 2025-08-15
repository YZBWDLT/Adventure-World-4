# ===== 玩家死亡 =====

# 当游戏时，设置玩家的重生倒计时
execute if score levelCompleted data matches 0 if score difficulty settings matches 1 run scoreboard players set @s temp.respawnTime 30
execute if score levelCompleted data matches 0 if score difficulty settings matches 2 run scoreboard players set @s temp.respawnTime 60
execute if score levelCompleted data matches 0 if score difficulty settings matches 3 run scoreboard players set @s temp.respawnTime 90
execute if score levelCompleted data matches 0 if score difficulty settings matches 4 run scoreboard players set @s temp.respawnTime 120
execute if score levelCompleted data matches 0 run tellraw @s {"rawtext":[{"translate":"§7您在刚刚的试炼中倒下了！但不要着急，在本关，您在 %%s 秒后就会被解救出来。","with":{"rawtext":[{"score":{"objective":"temp.respawnTime","name":"@s"}}]}}]}
