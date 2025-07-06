# ===== 火球攻击伤害判定 =====

# 判定实体是否在唤魔之石下面，若不在则有dealFireballDamage标签
    tag @a add dealFireballDamage
    tag @e[family=monster,type=!evocation_illager] add dealFireballDamage
    #                                                                               ↓ 保证实体在下方才行
    execute as @e[tag=dealFireballDamage] at @s if block ~ -45 ~ aw:evocation_stone if entity @s[y=-44,dy=-20] run tag @s remove dealFireballDamage
# 若有dealFireballDamage标签，则直接施加伤害（一阶段为 8 伤害，二阶段为 16 伤害）
    execute if score temp.stage data matches 1 run damage @e[tag=dealFireballDamage] 8 override
    execute if score temp.stage data matches 2 run damage @e[tag=dealFireballDamage] 16 override
# 产生虚拟爆炸（粒子、音效、移除火球实体）
    execute as @a at @s run playsound random.explode @s
    execute as @e[type=aw:fireball] at @s run particle aw:explosion ~~~
    kill @e[type=aw:fireball]
