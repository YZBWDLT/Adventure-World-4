# ===== 生成怪物 =====
# 守卫者

execute if score difficulty settings matches 1 run summon minecraft:guardian ~~~ 0 0 aw:level_1 "§a守卫者 | lv.1"
execute if score difficulty settings matches 2 run summon minecraft:guardian ~~~ 0 0 aw:level_2 "§b守卫者 | lv.2"
execute if score difficulty settings matches 3 run summon minecraft:guardian ~~~ 0 0 aw:level_3 "§d守卫者 | lv.3"
execute if score difficulty settings matches 4 run summon minecraft:guardian ~~~ 0 0 aw:level_4 "§6守卫者 | lv.4"
