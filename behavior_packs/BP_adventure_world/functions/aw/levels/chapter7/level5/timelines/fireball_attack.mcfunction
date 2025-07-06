# ===== 技能时间线：火球攻击 =====

# --- 一阶段 ---
    ## 第一轮
        ### [0s] 生成掩体
            execute if score temp.stage data matches 1 if score temp.skillCd time matches 0 run structure load aw:7_5_shelter -238 -45 31 0_degrees none false true false 10.00
            execute if score temp.stage data matches 1 if score temp.skillCd time matches 0 as @a at @s run playsound random.levelup @s ~~~ 1 2
        ### [1s~6s] 在攻击前提醒玩家
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -6..-1 run function aw/lib/modify_data/title
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -6..-1 run titleraw @a subtitle {"rawtext":[{"translate":"§c第 1 次攻击"}]}
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -6..-1 as @a at @s run playsound random.orb @s ~~~
        ### [7s] 发动攻击
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -7 at @e[type=aw:marker,name="fireballPos"] run summon aw:fireball ~~~
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -7 as @a at @s run playsound mob.ghast.fireball @s ~~~
        ### [8s] 发动攻击后，进行伤害判定
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -8 run function aw/levels/chapter7/level5/events/deal_fireball_damage
        ### [10s] 移除掩体
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -10 run fill -238 -45 31 -212 -45 57 air destroy
    ## 第二轮
        ### [11s] 生成掩体
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -11 run structure load aw:7_5_shelter -238 -45 31 0_degrees none false true false 3.00
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -11 as @a at @s run playsound random.levelup @s ~~~ 1 2
        ### [12s~16s] 在攻击前提醒玩家
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -16..-12 run function aw/lib/modify_data/title
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -16..-12 run titleraw @a subtitle {"rawtext":[{"translate":"§c第 2 次攻击"}]}
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -16..-12 as @a at @s run playsound random.orb @s ~~~
        ### [17s] 发动攻击
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -17 at @e[type=aw:marker,name="fireballPos"] run summon aw:fireball ~~~
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -17 as @a at @s run playsound mob.ghast.fireball @s ~~~
        ### [18s] 发动攻击后，进行伤害判定
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -18 run function aw/levels/chapter7/level5/events/deal_fireball_damage
        ### [19s] 移除掩体
            execute if score temp.stage data matches 1 if score temp.skillCd time matches -19 run fill -238 -45 31 -212 -45 57 air destroy

# --- 二阶段 ---
    ## 第一轮
        ### [0s] 生成掩体
            execute if score temp.stage data matches 2 if score temp.skillCd time matches 0 run structure load aw:7_5_shelter -238 -45 31 0_degrees none false true false 8.00
            execute if score temp.stage data matches 2 if score temp.skillCd time matches 0 as @a at @s run playsound random.levelup @s ~~~ 1 2
        ### [1s~3s] 在攻击前提醒玩家
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -3..-1 run function aw/lib/modify_data/title
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -3..-1 run titleraw @a subtitle {"rawtext":[{"translate":"§c第 1 次攻击"}]}
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -3..-1 as @a at @s run playsound random.orb @s ~~~
        ### [4s] 发动攻击
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -4 at @e[type=aw:marker,name="fireballPos"] run summon aw:fireball ~~~
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -4 as @a at @s run playsound mob.ghast.fireball @s ~~~
        ### [5s] 发动攻击后，进行伤害判定
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -5 run function aw/levels/chapter7/level5/events/deal_fireball_damage
        ### [6s] 移除掩体
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -6 run fill -238 -45 31 -212 -45 57 air destroy
    ## 第二轮
        ### [7s] 生成掩体
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -7 run structure load aw:7_5_shelter -238 -45 31 0_degrees none false true false 5.00
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -7 as @a at @s run playsound random.levelup @s ~~~ 1 2
        ### [8s~10s] 在攻击前提醒玩家
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -10..-8 run function aw/lib/modify_data/title
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -10..-8 run titleraw @a subtitle {"rawtext":[{"translate":"§c第 2 次攻击"}]}
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -10..-8 as @a at @s run playsound random.orb @s ~~~
        ### [11s] 发动攻击
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -11 at @e[type=aw:marker,name="fireballPos"] run summon aw:fireball ~~~
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -11 as @a at @s run playsound mob.ghast.fireball @s ~~~
        ### [12s] 发动攻击后，进行伤害判定
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -12 run function aw/levels/chapter7/level5/events/deal_fireball_damage
        ### [13s] 移除掩体
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -13 run fill -238 -45 31 -212 -45 57 air destroy
    ## 第三轮
        ### [14s] 生成掩体
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -14 run structure load aw:7_5_shelter -238 -45 31 0_degrees none false true false 2.00
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -14 as @a at @s run playsound random.levelup @s ~~~ 1 2
        ### [15s~16s] 在攻击前提醒玩家
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -16..-15 run function aw/lib/modify_data/title
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -16..-15 run titleraw @a subtitle {"rawtext":[{"translate":"§c第 3 次攻击"}]}
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -16..-15 as @a at @s run playsound random.orb @s ~~~
        ### [17s] 发动攻击
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -17 at @e[type=aw:marker,name="fireballPos"] run summon aw:fireball ~~~
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -17 as @a at @s run playsound mob.ghast.fireball @s ~~~
        ### [18s] 发动攻击后，进行伤害判定
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -18 run function aw/levels/chapter7/level5/events/deal_fireball_damage
        ### [19s] 移除掩体
            execute if score temp.stage data matches 2 if score temp.skillCd time matches -19 run fill -238 -45 31 -212 -45 57 air destroy

# --- [19s] 技能结束后 ---
    execute if score temp.skillCd time matches -19 run event entity @e[type=aw:marker,name="fireballPos"] aw:remove_immediately
