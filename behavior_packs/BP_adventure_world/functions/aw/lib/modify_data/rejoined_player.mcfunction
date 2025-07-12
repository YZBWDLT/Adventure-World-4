# ===== 重进玩家执行的命令 =====
# 当玩家重新进入游戏后，执行的命令
# 调用此方法时：需修饰执行者和执行位置为重进玩家及其位置（execute as @a[scores={isOnline=0}] at @s）。

# --- 更新玩家数据 ---
    scoreboard players add @s deathCount 0
    scoreboard players add @s killCount 0
    scoreboard players set @s health 20
    tag @s remove spectator

# --- 获取变量 ---
    ## 玩家数
        function aw/lib/get_data/player_amount
    ## 判断玩家是否在 X-Y（1<=X<=7, Y!=0）游戏中
        scoreboard players set temp.isGaming data 0
        execute if score level data matches 1..7 unless score level data matches 0 if score levelCompleted data matches 0 run scoreboard players set temp.isGaming data 1

# --- 多人游戏 ---
    # 在 data.playerAmount >= 2 时进行

    ## 玩家进入到正在进行中的游戏时，改为旁观者
        execute if score playerAmount data matches 2.. if score temp.isGaming data matches 1 run tellraw @s {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您调整为旁观者。在下一波开始后，您便可以参与游戏。"}]}
        execute if score playerAmount data matches 2.. if score temp.isGaming data matches 1 run tag @s add spectator
    ## 传送进入的玩家到本关重生点上
        execute if score playerAmount data matches 2.. run function aw/lib/level_pos_data/teleport
    ## 重新播放音乐（这里对单人游戏也生效）
        tellraw @a[scores={isOnline=!0}] {"rawtext":[{"translate":"§7检测到有玩家进入游戏，为确保游戏体验，将重新播放场景音乐"}]}
        function aw/lib/modify_data/play_music

# --- 更正游戏规则与游戏模式 ---
# 仅中国版，仅1人时执行，以适应中国版电脑版的要求
    function aw/lib/get_data/client
    execute if score client data matches 1 if score playerAmount data matches 0 run function aw/lib/modify_data/init/gamerule
    execute if score client data matches 1 if score playerAmount data matches 0 run gamemode adventure @s
    execute if score client data matches 1 if score playerAmount data matches 0 run weather clear
