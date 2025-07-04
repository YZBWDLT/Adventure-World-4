# ===== 技能触发时：召唤怪物 =====

# 设定技能时长
    scoreboard players set temp.skillLength data -15
# 设定标题
    function aw/lib/modify_data/title
    titleraw @a subtitle {"rawtext":[{"translate":"§c当心！即将有怪物生成！"}]}
# 召唤怪物
    ## 准备生成器，一阶段生成 3 个，二阶段生成 5 个
        summon aw:spawner -225 -48 44
        summon aw:spawner -225 -48 44
        summon aw:spawner -225 -48 44
        execute if score temp.stage data matches 2 run summon aw:spawner -225 -48 44
        execute if score temp.stage data matches 2 run summon aw:spawner -225 -48 44
    ## 令各个生成器选定位置（这里，data.@s[type=aw:spawner]为随机位置）
        execute as @e[type=aw:spawner] run scoreboard players random @s data 0 14
        execute as @e[type=aw:spawner,scores={data=0}] run tp @s -212 -49 31
        execute as @e[type=aw:spawner,scores={data=1}] run tp @s -225 -49 31
        execute as @e[type=aw:spawner,scores={data=2}] run tp @s -238 -49 31
        execute as @e[type=aw:spawner,scores={data=3}] run tp @s -233 -49 39
        execute as @e[type=aw:spawner,scores={data=4}] run tp @s -225 -48 39
        execute as @e[type=aw:spawner,scores={data=5}] run tp @s -217 -49 36
        execute as @e[type=aw:spawner,scores={data=6}] run tp @s -219 -49 44
        execute as @e[type=aw:spawner,scores={data=7}] run tp @s -230 -48 44
        execute as @e[type=aw:spawner,scores={data=8}] run tp @s -238 -49 44
        execute as @e[type=aw:spawner,scores={data=9}] run tp @s -232 -49 51
        execute as @e[type=aw:spawner,scores={data=10}] run tp @s -225 -48 48
        execute as @e[type=aw:spawner,scores={data=11}] run tp @s -218 -49 51
        execute as @e[type=aw:spawner,scores={data=12}] run tp @s -213 -48 56
        execute as @e[type=aw:spawner,scores={data=13}] run tp @s -225 -49 57
        execute as @e[type=aw:spawner,scores={data=14}] run tp @s -238 -48 57
    ## 令各个生成器选定类型（这里，data.@s[type=aw:spawner]为随机类型）
        execute as @e[type=aw:spawner] run scoreboard players random @s data 1 100
        ### 一阶段时
            execute if score temp.stage data matches 1 run scoreboard players random temp.spawnMonsterGroup data 1 10
            #### 组别 1：骷髅[3级]/流浪者[3级]/僵尸[4级]/小僵尸[4级]/僵尸猪灵[4级]
                execute if score temp.spawnMonsterGroup data matches 1..4 as @e[type=aw:spawner,scores={data=1..20}] run event entity @s aw:spawn_zombie_4
                execute if score temp.spawnMonsterGroup data matches 1..4 as @e[type=aw:spawner,scores={data=21..40}] run event entity @s aw:spawn_zombie_baby_4
                execute if score temp.spawnMonsterGroup data matches 1..4 as @e[type=aw:spawner,scores={data=41..60}] run event entity @s aw:spawn_zombified_piglin_4
                execute if score temp.spawnMonsterGroup data matches 1..4 as @e[type=aw:spawner,scores={data=61..80}] run event entity @s aw:spawn_skeleton_3
                execute if score temp.spawnMonsterGroup data matches 1..4 as @e[type=aw:spawner,scores={data=81..100}] run event entity @s aw:spawn_stray_3
            #### 组别 2：猪灵[4级]/疣猪兽[3级]
                execute if score temp.spawnMonsterGroup data matches 5 as @e[type=aw:spawner,scores={data=1..80}] run event entity @s aw:spawn_piglin_4
                execute if score temp.spawnMonsterGroup data matches 5 as @e[type=aw:spawner,scores={data=81..100}] run event entity @s aw:spawn_hoglin_3
            #### 组别 3：岩浆怪
                execute if score temp.spawnMonsterGroup data matches 6 as @e[type=aw:spawner,scores={data=1..85}] run event entity @s aw:spawn_magma_cube_small
                execute if score temp.spawnMonsterGroup data matches 6 as @e[type=aw:spawner,scores={data=86..98}] run event entity @s aw:spawn_magma_cube_middle
                execute if score temp.spawnMonsterGroup data matches 6 as @e[type=aw:spawner,scores={data=99..100}] run event entity @s aw:spawn_magma_cube_large
            #### 组别 4：蜘蛛[4级]/洞穴蜘蛛[4级]/蠹虫[4级]
                execute if score temp.spawnMonsterGroup data matches 7 as @e[type=aw:spawner,scores={data=1..33}] run event entity @s aw:spawn_spider_4
                execute if score temp.spawnMonsterGroup data matches 7 as @e[type=aw:spawner,scores={data=34..66}] run event entity @s aw:spawn_cave_spider_4
                execute if score temp.spawnMonsterGroup data matches 7 as @e[type=aw:spawner,scores={data=67..100}] run event entity @s aw:spawn_silverfish_4
            #### 组别 5：带盾僵尸
                execute if score temp.spawnMonsterGroup data matches 8..10 run event entity @e[type=aw:spawner] aw:spawn_zombie_shield

        ### 二阶段时
            execute if score temp.stage data matches 1 run scoreboard players random temp.spawnMonsterGroup data 1 12
            #### 组别 1：骷髅[3级]/流浪者[3级]/僵尸[4级]/小僵尸[4级]/僵尸猪灵[4级]
                execute if score temp.spawnMonsterGroup data matches 1..9 as @e[type=aw:spawner,scores={data=1..20}] run event entity @s aw:spawn_zombie_4
                execute if score temp.spawnMonsterGroup data matches 1..9 as @e[type=aw:spawner,scores={data=21..40}] run event entity @s aw:spawn_zombie_baby_4
                execute if score temp.spawnMonsterGroup data matches 1..9 as @e[type=aw:spawner,scores={data=41..60}] run event entity @s aw:spawn_zombified_piglin_4
                execute if score temp.spawnMonsterGroup data matches 1..9 as @e[type=aw:spawner,scores={data=61..80}] run event entity @s aw:spawn_skeleton_3
                execute if score temp.spawnMonsterGroup data matches 1..9 as @e[type=aw:spawner,scores={data=81..100}] run event entity @s aw:spawn_stray_3
            #### 组别 2：猪灵[4级]/疣猪兽[3级]
                execute if score temp.spawnMonsterGroup data matches 10 as @e[type=aw:spawner,scores={data=1..80}] run event entity @s aw:spawn_piglin_4
                execute if score temp.spawnMonsterGroup data matches 10 as @e[type=aw:spawner,scores={data=81..100}] run event entity @s aw:spawn_hoglin_3
            #### 组别 3：岩浆怪/女巫/恶魂
                execute if score temp.spawnMonsterGroup data matches 11 as @e[type=aw:spawner,scores={data=1..69}] run event entity @s aw:spawn_magma_cube_small
                execute if score temp.spawnMonsterGroup data matches 11 as @e[type=aw:spawner,scores={data=70..84}] run event entity @s aw:spawn_magma_cube_middle
                execute if score temp.spawnMonsterGroup data matches 11 as @e[type=aw:spawner,scores={data=85..94}] run event entity @s aw:spawn_magma_cube_large
                execute if score temp.spawnMonsterGroup data matches 11 as @e[type=aw:spawner,scores={data=95..97}] run event entity @s aw:spawn_witch
                execute if score temp.spawnMonsterGroup data matches 11 as @e[type=aw:spawner,scores={data=98..100}] run event entity @s aw:spawn_ghast
            #### 组别 4：蜘蛛[4级]/洞穴蜘蛛[4级]/蠹虫[4级]
                execute if score temp.spawnMonsterGroup data matches 12 as @e[type=aw:spawner,scores={data=1..35}] run event entity @s aw:spawn_spider_4
                execute if score temp.spawnMonsterGroup data matches 12 as @e[type=aw:spawner,scores={data=36..50}] run event entity @s aw:spawn_cave_spider_4
                execute if score temp.spawnMonsterGroup data matches 12 as @e[type=aw:spawner,scores={data=51..100}] run event entity @s aw:spawn_silverfish_4
