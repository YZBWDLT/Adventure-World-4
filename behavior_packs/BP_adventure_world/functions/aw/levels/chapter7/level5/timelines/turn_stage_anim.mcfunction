# ===== 转换阶段 =====
# 从一阶段转为二阶段的时间线

## [0] 如果时间线还未启用，则启用时间线
    execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse
## [1] 初始化
    ### 摄像机震动
        execute if score timeline time matches 1 run camerashake add @a[tag=!spectator] 1 2 rotational
    ### 召唤 4 个火球
        execute if score timeline time matches 1 run summon aw:fireball -232 -45 37
        execute if score timeline time matches 1 run summon aw:fireball -232 -45 51
        execute if score timeline time matches 1 run summon aw:fireball -217 -45 51
        execute if score timeline time matches 1 run summon aw:fireball -219 -45 36
    ### 提示玩家
        execute if score timeline time matches 1 run function aw/lib/events/show_empty_title
        execute if score timeline time matches 1 run titleraw @a subtitle {"rawtext":[{"translate":"§c唤魔法师已被激怒！"}]}
        execute if score timeline time matches 1 run execute as @a at @s run playsound smithing_table.use @s
## [19] 火球爆炸
    ### 爆炸粒子和音效
        execute if score timeline time matches 19 as @e[type=aw:fireball] at @s run particle minecraft:huge_explosion_emitter ~~~
        execute if score timeline time matches 19 as @e[type=aw:fireball] at @s run playsound random.explode @a ~~~ 1 0.75
    ### 爆炸伤害
        execute if score timeline time matches 19 as @e[type=aw:fireball] at @s run damage @e[r=3] 15 override
    ### 炸出第二阶段的地形
        execute if score timeline time matches 19 run structure load aw:7_5_phase2 -246 -54 23
    ### 移除火球
        execute if score timeline time matches 19 run kill @e[type=aw:fireball]
## [20] 时间线结束
    ### 更改阶段
        execute if score timeline time matches 20.. run scoreboard players set temp.stage data 2
    ### 结束时间线流逝
        execute if score timeline time matches 20.. run function aw/lib/modify_data/timeline/disable_time_lapse
