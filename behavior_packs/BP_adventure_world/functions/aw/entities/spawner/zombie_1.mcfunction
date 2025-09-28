# ===== 生成怪物 =====
# 僵尸 | lv.1

execute if score difficulty settings matches 1 run summon minecraft:zombie ~~~ 0 0 aw:level_1 "§a僵尸 | lv.1"
execute if score difficulty settings matches 2.. run summon minecraft:zombie ~~~ 0 0 aw:level_2 "§a僵尸 | lv.2"
execute if score difficulty settings matches 3 run summon minecraft:zombie ~~~ 0 0 aw:level_1 "§a僵尸 | lv.1"
execute if score difficulty settings matches 4 run summon minecraft:zombie ~~~ 0 0 aw:level_2 "§a僵尸 | lv.2"
