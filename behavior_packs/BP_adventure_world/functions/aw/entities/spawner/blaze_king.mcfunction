# ===== 生成怪物 =====
# 烈焰之魂

execute if score difficulty settings matches 1 run summon aw:blaze_king ~~~ 0 0 aw:level_1
execute if score difficulty settings matches 2 run summon aw:blaze_king ~~~ 0 0 aw:level_2
execute if score difficulty settings matches 3 run summon aw:blaze_king ~~~ 0 0 aw:level_3
execute if score difficulty settings matches 4 run summon aw:blaze_king ~~~ 0 0 aw:level_4

## BOSS 的 2/3 血量
execute as @e[type=aw:blaze_king,has_property={aw:level=1}] run scoreboard players set temp.bossHealthTwoThird data 334
execute as @e[type=aw:blaze_king,has_property={aw:level=2}] run scoreboard players set temp.bossHealthTwoThird data 434
execute as @e[type=aw:blaze_king,has_property={aw:level=3}] run scoreboard players set temp.bossHealthTwoThird data 534
execute as @e[type=aw:blaze_king,has_property={aw:level=4}] run scoreboard players set temp.bossHealthTwoThird data 634

## BOSS 的 1/3 血量
execute as @e[type=aw:blaze_king,has_property={aw:level=1}] run scoreboard players set temp.bossHealthOneThird data 167
execute as @e[type=aw:blaze_king,has_property={aw:level=2}] run scoreboard players set temp.bossHealthOneThird data 217
execute as @e[type=aw:blaze_king,has_property={aw:level=3}] run scoreboard players set temp.bossHealthOneThird data 267
execute as @e[type=aw:blaze_king,has_property={aw:level=4}] run scoreboard players set temp.bossHealthOneThird data 317
