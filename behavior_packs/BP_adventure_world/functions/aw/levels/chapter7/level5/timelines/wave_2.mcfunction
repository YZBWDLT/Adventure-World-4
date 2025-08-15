# ===== 第 2 波时间线 =====

# --- 技能倒计时 ---
    # 技能倒计时分为【技能触发倒计时】和【技能等待倒计时】。
    # 【技能触发倒计时】：当技能触发倒计时为 0 时，则释放技能。
    # 【技能等待倒计时】：技能触发之后，需要有一段等待时间之后才能回到技能触发倒计时，代表技能本身的冷却时间。

    ## 技能等待倒计时 | 在技能触发倒计时的前面执行，防止到 0 时被直接跳过
        execute if score temp.skillCd time matches ..0 run scoreboard players remove temp.skillCd time 1
    ## 技能触发倒计时 | 仅限在唤魔法师蓝盾时执行
        execute if score temp.skillCd time matches 1.. if entity @e[type=evocation_illager,has_property={aw:shield_type="strong"}] run scoreboard players remove temp.skillCd time 1
    ## 当技能等待倒计时到时后，重新刷新技能触发倒计时
        ### 一阶段时，随机为 3~10 秒
            execute if score temp.skillCd time < temp.skillLength data if score temp.stage data matches 1 run scoreboard players random temp.skillCd time 3 10
        ### 二阶段时，随机为 2~5 秒
            execute if score temp.skillCd time < temp.skillLength data if score temp.stage data matches 2 run scoreboard players random temp.skillCd time 2 5

# --- 技能倒计时为 0 后，触发技能 ---
    ## 选定待执行的技能
        ### 一阶段时，随机为 1~4 的比重
            execute if score temp.skillCd time matches 0 if score temp.stage data matches 1 run scoreboard players random temp.skillType data 1 4
        ### 二阶段时，随机为 1~6 的比重
            execute if score temp.skillCd time matches 0 if score temp.stage data matches 2 run scoreboard players random temp.skillType data 1 6
    ## 清除劫掠兽
        execute if score temp.skillCd time matches 0 run kill @e[type=ravager]
    ## 按照data.temp.skillType随机到的内容执行技能
        ### 随机到 1 时：火球攻击
            execute if score temp.skillCd time matches 0 if score temp.skillType data matches 1 run function aw/levels/chapter7/level5/events/skill_fireball_attack
        ### 随机到 2 时：岩浆上涨
            execute if score temp.skillCd time matches 0 if score temp.skillType data matches 2 run function aw/levels/chapter7/level5/events/skill_rise_lava
        ### 随机到 3 时：恢复血量
            execute if score temp.skillCd time matches 0 if score temp.skillType data matches 3 run function aw/levels/chapter7/level5/events/skill_heal_boss
        ### 随机到 4 或更高时：召唤怪物
            execute if score temp.skillCd time matches 0 if score temp.skillType data matches 4.. run function aw/levels/chapter7/level5/events/skill_spawn_monster
# --- 处于技能等待倒计时状态下，令某些技能进入时间线 ---
    ## 火球攻击的时间线
        execute if score temp.skillCd time matches ..0 if score temp.skillType data matches 1 run function aw/levels/chapter7/level5/timelines/fireball_attack
    ## 岩浆上涨的时间线
        execute if score temp.skillCd time matches ..0 if score temp.skillType data matches 2 run function aw/levels/chapter7/level5/timelines/rise_lava
# --- 技能执行完毕后 ---
    ## 重置技能类型
        execute if score temp.skillCd time = temp.skillLength data run scoreboard players set temp.skillType data 0
    ## 生成唤魔法师的坐骑，并建立骑乘关系
        execute if score temp.skillCd time = temp.skillLength data run function aw/entities/spawner/ravager
        execute if score temp.skillCd time = temp.skillLength data run ride @e[type=evocation_illager,c=1] start_riding @e[type=ravager,c=1]
    ## 提醒玩家
        execute if score temp.skillCd time = temp.skillLength data run function aw/lib/modify_data/title
        execute if score temp.skillCd time = temp.skillLength data run titleraw @a subtitle {"rawtext":[{"translate":"§b唤魔法师的盾变弱了！"}]}
    ## 将所有可带盾的怪物改为弱盾状态
        execute if score temp.skillCd time = temp.skillLength data run function aw/levels/chapter7/level5/events/set_weak_shield
# --- 死亡的玩家进行倒计时复活 ---
    # 仅限多人状态下执行，由死亡状态的玩家执行。
    execute if score playerAmount data matches 2.. as @a[tag=spectator] at @s run function aw/levels/chapter7/level5/timelines/player_respawn
