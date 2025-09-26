# ===== 火球攻击伤害判定 =====

# 判定实体是否在唤魔之石下面，若不在则有dealFireballDamage标签
    tag @a add dealFireballDamage
    tag @e[family=monster,type=!evocation_illager] add dealFireballDamage
    #                                                                               ↓ 保证实体在下方才行
    execute as @e[tag=dealFireballDamage] at @s if block ~ -45 ~ aw:evocation_stone if entity @s[y=-44,dy=-20] run tag @s remove dealFireballDamage
# 检查本次游戏是否为玩家第 10 次及以后重开，如果是则阻止玩家受到此伤害
    execute if score failedCount.thisLevel data matches 10.. run tag @a remove dealFireballDamage
# 若有dealFireballDamage标签，则直接施加伤害（一阶段为 8 伤害，二阶段为 16 伤害）
    execute if score temp.stage data matches 1 run damage @e[tag=dealFireballDamage] 8 override
    execute if score temp.stage data matches 2 run damage @e[tag=dealFireballDamage] 16 override
# 产生虚拟爆炸（粒子、音效、移除火球实体）
    execute as @a at @s run playsound random.explode @s
    execute as @e[type=aw:fireball] at @s run particle aw:explosion ~~~
    kill @e[type=aw:fireball]
# 对被伤害的玩家记录被砸次数
    scoreboard players add @a[tag=dealFireballDamage] temp.exploded 1
# 被砸三次的玩家触发成就：(1) 无作弊，(2) 成就未获取，(3) 有被砸3次的玩家 -> 躲这里不错
    execute if score hasCheat data matches 0 if score achievement.explode3Times record matches 0 if entity @a[scores={temp.exploded=3..}] run function aw/lib/achievements/levels/explode_3_times
# 移除判定标签
    tag @e remove dealFireballDamage
