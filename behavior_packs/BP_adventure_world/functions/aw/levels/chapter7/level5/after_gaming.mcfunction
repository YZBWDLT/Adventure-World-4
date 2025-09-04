# ===== 关卡游戏后时间线 =====
# 7-5

# --- 敲碎砖块阶段 ---
    # active.timeline == 1，时间流逝

    ## [60] 敲碎第 1 层
    execute if score timeline active matches 1 if score timeline time matches 60 run fill -224 -49 43 -226 -49 45 air destroy
    execute if score timeline active matches 1 if score timeline time matches 61 run kill @e[type=item]
    ## [80] 敲碎第 2 层
    execute if score timeline active matches 1 if score timeline time matches 80 run fill -224 -50 43 -226 -50 45 air destroy
    execute if score timeline active matches 1 if score timeline time matches 81 run kill @e[type=item]
    ## [100] 敲碎第 3 层
    execute if score timeline active matches 1 if score timeline time matches 100 run fill -224 -51 43 -226 -51 45 air destroy
    execute if score timeline active matches 1 if score timeline time matches 101 run kill @e[type=item]
    ## [120] 敲碎第 4 层
    execute if score timeline active matches 1 if score timeline time matches 120 run fill -224 -52 43 -226 -52 45 air destroy
    execute if score timeline active matches 1 if score timeline time matches 121 run kill @e[type=item]
    ## [140] 敲碎第 5 层
    execute if score timeline active matches 1 if score timeline time matches 140 run fill -224 -53 43 -226 -53 45 air destroy
    execute if score timeline active matches 1 if score timeline time matches 141 run kill @e[type=item]
    ## [160] 敲碎第 6 层
    execute if score timeline active matches 1 if score timeline time matches 160 run fill -224 -54 43 -226 -54 45 air destroy
    execute if score timeline active matches 1 if score timeline time matches 161 run kill @e[type=item]
    ## [180] 进入检查状态
    execute if score timeline active matches 1 if score timeline time matches 180.. run scoreboard players set timeline active 2
    execute if score timeline active matches 1 if score timeline time matches 180.. run function aw/lib/modify_data/timeline/disable_time_lapse

# --- 等待阶段 ---
    # active.timeline == 2

    ## 传声石结晶剧情
    execute if score timeline active matches 2 if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §7§kabcdefghijklmnopqrstuvwxyz"}]}
    execute if score timeline active matches 2 if score timeline time matches 80.. run function aw/lib/modify_data/timeline/disable_time_lapse

    ## 检查玩家进入坑中
    execute if score timeline active matches 2 positioned -225 -62 44 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=2,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter7/level5/events/player_in_hole

# --- 入坑后 ---
    # active.timeline == 3，时间流逝

    ## [120] 跳转到结束界面 | 如果为剧情模式，从stage1开始；如果为纯战斗模式，从stage2开始
    execute if score timeline active matches 3 if score timeline time matches 120.. if score storyMode settings matches 0 run function aw/levels/chapter7/level5/events/end_in_combat_mode
    execute if score timeline active matches 3 if score timeline time matches 120.. if score storyMode settings matches 1 run function aw/levels/end/stage1/start
