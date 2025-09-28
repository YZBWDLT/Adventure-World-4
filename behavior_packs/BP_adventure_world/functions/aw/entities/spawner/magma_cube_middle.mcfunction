# ===== 生成怪物 =====
# 中型岩浆怪

execute if score difficulty settings matches 1.. run summon minecraft:magma_cube ~~~ 0 0 spawn_medium "§b中型岩浆怪"
execute if score difficulty settings matches 2.. run summon minecraft:magma_cube ~~~ 0 0 spawn_medium "§b中型岩浆怪"
execute if score difficulty settings matches 3.. run summon minecraft:magma_cube ~~~ 0 0 spawn_medium "§b中型岩浆怪"
execute if score difficulty settings matches 4 run summon minecraft:magma_cube ~~~ 0 0 spawn_medium "§b中型岩浆怪"

scoreboard players set levelCompleteCountdown time 60
