# ===== 死亡机制 =====
# 判定死亡玩家并执行命令。

# --- 运行死亡榜 ---
    scoreboard players set @a[scores={deathState=!2}] deathState 1
    scoreboard players set @e[type=player] deathState 0
    scoreboard players add @a[scores={deathState=1}] deathCount 1
    scoreboard players set @a[scores={deathState=1}] deathState 2

# --- 玩家死亡后改为旁观模式，并播报死亡消息 ---
# 当玩家在 X-Y 游戏时死亡，则进行死亡逻辑判断

    ## 判断玩家是否在 X-Y（1<=X<=7, Y!=0）游戏中
        scoreboard players set temp.isGaming data 0
        execute if score level data matches 1..7 unless score level data matches 0 if score levelCompleted data matches 0 run scoreboard players set temp.isGaming data 1
    ## 如果玩家数大于等于 2 人，播报消息并提醒玩家在下一波复活
        execute if score temp.isGaming data matches 1 if score playerAmount data matches 2.. as @a[scores={deathState=2},tag=!spectator] run function aw/lib/modify_data/death_message
    ## 标记死亡的玩家为旁观玩家，并设置为旁观模式
        execute if score temp.isGaming data matches 1 run tag @a[scores={deathState=2}] add spectator
        gamemode spectator @a[tag=spectator,m=!spectator]
