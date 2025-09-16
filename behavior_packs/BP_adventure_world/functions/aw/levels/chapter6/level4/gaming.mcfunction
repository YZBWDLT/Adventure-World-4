# ===== 关卡游戏时时间线 =====
# 6-4

# --- 检查 BOSS 是否被清除 ---
    ## BOSS 清除 -> 关卡完成
        execute unless entity @e[type=aw:spawner] unless entity @e[type=aw:blaze_king] run function aw/levels/chapter6/level4/complete

# --- 阻止玩家出界 ---
# 详细原理可以见我们给出的地图文档，文档链接见主函数（aw/system/main）

    ## 阻止旁观玩家出界
        execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -75 -38 22 run function aw/lib/events/player_out_of_border
    ## 当玩家在上一关重生点时，回到本关
        execute as @a positioned -75 -36 -15 if entity @s[r=2] run tp @s -75 -38 22
    ## 阻止玩家关门时跑出房间
        execute as @a at @s if block ~~80~ positioned -75 -38 22 run function aw/lib/events/player_out_of_border

# --- 检查存活玩家数目 ---
    # 如果存活玩家数目为 0，则触发关卡失败函数
        execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter6/level4/fail

# --- BOSS 血量阈值设置 ---
    # （设置在生成函数 aw/entities/spawner/blaze_king中，自动输出data.temp.bossHealthTwoThird和data.temp.bossHealthOneThird）

# --- BOSS 技能 ---
    # 每秒执行 1 次。BOSS 的血量值通过脚本获取。
    ## 岩浆涨落
        execute if score tick time matches 5 run function aw/levels/chapter6/level4/timelines/rise_lava
    ## 随机传送
        execute if score tick time matches 8 run function aw/levels/chapter6/level4/timelines/teleport
    ## 召唤怪物 | 仅当 BOSS 血量不足 2/3 时执行
        execute if score @e[type=aw:blaze_king,c=1] health < temp.bossHealthTwoThird data if score tick time matches 11 run function aw/levels/chapter6/level4/timelines/spawn_monster
    ## 回血 | 仅当 BOSS 血量不足 1/3 时执行
        execute if score @e[type=aw:blaze_king,c=1] health < temp.bossHealthOneThird data if score tick time matches 14 run function aw/levels/chapter6/level4/timelines/heal_boss

# --- 死亡的玩家进行倒计时复活 ---
    # 每秒执行 1 次。仅限多人状态下执行，由死亡状态的玩家执行。
        execute if score tick time matches 11 if score playerAmount data matches 2.. as @a[tag=spectator] at @s run function aw/levels/chapter6/level4/timelines/player_respawn
