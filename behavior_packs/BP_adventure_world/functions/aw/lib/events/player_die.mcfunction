# ===== 事件：玩家死亡 =====
# 当玩家死亡后，执行的命令
# 调用此方法时：仅aw/system/main函数可执行，需修饰执行者和执行位置为重进玩家及其位置（execute as @a[scores={deathState=1}] at @s）。

# --- 记录死亡榜次数 ---
# 仅在试炼时记录，仅在全流程时记录
    execute if score chapter data matches 1..7 if score isSingleLevel data matches 0 run scoreboard players add @s deathCount 1

# --- 玩家死亡后改为旁观模式，并播报死亡消息 ---
    # 当玩家在 X-Y 游戏时死亡，则进行死亡逻辑判断

    ## 如果玩家数大于等于 2 人，播报消息并提醒玩家在下一波复活
        execute if score gaming data matches 1 if score playerAmount data matches 2.. run function aw/lib/events/show_death_message
    ## 标记死亡的玩家为旁观玩家，并设置为旁观模式
        execute if score gaming data matches 1 run scoreboard players set @s[scores={spectator=!2}] spectator 1
        execute if score gaming data matches 1 run gamemode spectator @s

# --- 特殊关卡死亡函数 ---

    execute if score chapter data matches 6 if score level data matches 4 if score playerAmount data matches 2.. run function aw/levels/chapter6/level4/events/player_die
    execute if score chapter data matches 7 if score level data matches 5 if score playerAmount data matches 2.. if score wave data matches 2 run function aw/levels/chapter7/level5/events/player_die
