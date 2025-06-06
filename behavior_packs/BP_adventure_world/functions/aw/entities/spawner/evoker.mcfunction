# ===== 生成怪物 =====
# 唤魔法师

execute if score difficulty settings matches 1 run summon minecraft:evocation_illager ~~~ 0 0 aw:level_1 "§c唤魔法师 | lv.1"
execute if score difficulty settings matches 2 run summon minecraft:evocation_illager ~~~ 0 0 aw:level_2 "§c唤魔法师 | lv.2"
execute if score difficulty settings matches 3 run summon minecraft:evocation_illager ~~~ 0 0 aw:level_3 "§c唤魔法师 | lv.3"
execute if score difficulty settings matches 4 run summon minecraft:evocation_illager ~~~ 0 0 aw:level_4 "§c唤魔法师 | lv.4"

execute if score difficulty settings matches 1 run summon minecraft:ravager ~~~ 0 0 aw:level_1 "§c劫掠兽 | lv.1"
execute if score difficulty settings matches 2 run summon minecraft:ravager ~~~ 0 0 aw:level_2 "§c劫掠兽 | lv.2"
execute if score difficulty settings matches 3 run summon minecraft:ravager ~~~ 0 0 aw:level_3 "§c劫掠兽 | lv.3"
execute if score difficulty settings matches 4 run summon minecraft:ravager ~~~ 0 0 aw:level_4 "§c劫掠兽 | lv.4"

ride @e[family=evoker] start_riding @e[family=ravager]
