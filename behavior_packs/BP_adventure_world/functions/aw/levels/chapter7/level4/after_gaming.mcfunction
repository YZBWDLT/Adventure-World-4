# ===== 关卡游戏后时间线 =====
# 7-4

# --- 岩浆下落 ---
    # active.timeline == 1，时间流逝
    execute if score timeline active matches 1 if score timeline time matches 40 run fill -224 -27 111 -244 -27 85 air replace lava
    execute if score timeline active matches 1 if score timeline time matches 80 run fill -224 -28 111 -244 -28 85 air replace lava
    execute if score timeline active matches 1 if score timeline time matches 120 run fill -224 -29 111 -244 -29 85 air replace lava
    ## [160] 进入检查状态
    execute if score timeline active matches 1 if score timeline time matches 160.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
    execute if score timeline active matches 1 if score timeline time matches 160.. run scoreboard players set timeline active 2

# --- 等待阶段 ---
    # active.timeline == 2

    ## 传声石结晶剧情
    execute if score timeline active matches 2 if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §7§kabcdefghijklmnopqrstuvwxyz"}]}
    execute if score timeline active matches 2 if score timeline time matches 80.. run function aw/lib/modify_data/states/timeline/disable_time_lapse

    ## 检查玩家进入坑中
    execute if score timeline active matches 2 positioned -234 -63 98 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=2,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter7/level4/events/player_in_hole

# --- 入坑后 ---
    # active.timeline == 3，时间流逝

    ## [120] 跳转到 7-5
    execute if score timeline active matches 3 if score timeline time matches 120.. run function aw/lib/modify_data/stop_dialogue
    execute if score timeline active matches 3 if score timeline time matches 120.. run function aw/levels/chapter7/level5/start
