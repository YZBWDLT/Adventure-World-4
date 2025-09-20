# ===== 准备开启单关卡试炼 =====

# 2-1
execute if score temp.level settings matches 4 run tp @a -75 19 60
execute if score temp.level settings matches 4 run spawnpoint @a -79 19 26
execute if score temp.level settings matches 4 run summon aw:door -75 18 58 0 0 aw:set_forest_door
execute if score temp.level settings matches 4 run summon aw:door -69 18 65 90 0 aw:set_forest_door

# 2-2
execute if score temp.level settings matches 5 run tp @a -72 1 69
execute if score temp.level settings matches 4 run spawnpoint @a -75 19 60
execute if score temp.level settings matches 5 run summon aw:door -70 0 69 90 0 aw:set_forest_door
execute if score temp.level settings matches 5 run summon aw:door -104 -17 68 90 0 aw:set_forest_door

# 2-3
execute if score temp.level settings matches 6 run tp @a -143 -20 61
execute if score temp.level settings matches 4 run spawnpoint @a -72 1 69
execute if score temp.level settings matches 6 run summon aw:door -141 -21 61 90 0 aw:set_forest_door
execute if score temp.level settings matches 6 run summon aw:door -167 -21 61 90 0 aw:set_forest_door

# 关门
event entity @e[type=aw:door] aw:close_door

# 添加迷雾
fog @a remove gameFog
fog @a push aw:forest_temple gameFog

# 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§a丛林神殿"
