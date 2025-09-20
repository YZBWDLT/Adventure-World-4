# ===== 准备开启单关卡试炼 =====

# 4-1
execute if score temp.level settings matches 11 run tp @a -168 18 -20
execute if score temp.level settings matches 11 run spawnpoint @a -173 18 -8
execute if score temp.level settings matches 11 run summon aw:door -170 17 -20 90 0 aw:set_frost_door
execute if score temp.level settings matches 11 run structure load aw:4_1_phase1 -168 16 -23

# 4-2
execute if score temp.level settings matches 12 run tp @a -156 8 -1
execute if score temp.level settings matches 12 run spawnpoint @a -168 18 -20
execute if score temp.level settings matches 12 run summon aw:door -156 7 -3 0 0 aw:set_frost_door "4-2"
execute if score temp.level settings matches 12 run summon aw:door -156 7 16 0 0 aw:set_frost_door "4-2"

# 4-3
execute if score temp.level settings matches 13 run tp @a -156 -11 14
execute if score temp.level settings matches 13 run spawnpoint @a -156 8 -1
execute if score temp.level settings matches 13 run summon aw:door -156 -12 16 0 0 aw:set_frost_door
execute if score temp.level settings matches 13 run fill -156 -18 5 -158 -18 7 ice replace water

# 4-4
execute if score temp.level settings matches 14 run tp @a -141 -30 6
execute if score temp.level settings matches 14 run spawnpoint @a -156 -11 14
execute if score temp.level settings matches 14 run summon aw:door -143 -31 6 90 0 aw:set_frost_door
execute if score temp.level settings matches 14 run summon aw:door -117 -31 6 90 0 aw:set_frost_door

# 关门
event entity @e[type=aw:door] aw:close_door

# 添加迷雾
fog @a remove gameFog
fog @a push aw:frost_temple gameFog

# 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§9寒冰神殿"
