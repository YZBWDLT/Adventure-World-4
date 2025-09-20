# ===== 准备开启单关卡试炼 =====

# 6-1
execute if score temp.level settings matches 15 run tp @a -76 -30 -48
execute if score temp.level settings matches 15 run spawnpoint @a -81 -30 -28
execute if score temp.level settings matches 15 run summon aw:door -76 -31 -46 0 0 aw:set_mountain_door
execute if score temp.level settings matches 15 run summon aw:door -82 -31 -63 90 0 aw:set_mountain_door

# 6-2
execute if score temp.level settings matches 16 run tp @a -80 -18 -48
execute if score temp.level settings matches 16 run spawnpoint @a -76 -30 -48
execute if score temp.level settings matches 16 run summon aw:door -80 -19 -50 0 0 aw:set_mountain_door
execute if score temp.level settings matches 16 run summon aw:door -71 -19 -30 0 0 aw:set_mountain_door

# 6-3
execute if score temp.level settings matches 17 run tp @a -75 -36 -15
execute if score temp.level settings matches 17 run spawnpoint @a -80 -18 -48
execute if score temp.level settings matches 17 run summon aw:door -75 -37 -17 0 0 aw:set_mountain_door
execute if score temp.level settings matches 17 run summon aw:door -75 -39 8 0 0 aw:set_mountain_door

# 6-4
execute if score temp.level settings matches 18 run tp @a -75 -38 22
execute if score temp.level settings matches 18 run spawnpoint @a -75 -36 -15
execute if score temp.level settings matches 18 run summon aw:door -75 -39 20 0 0 aw:set_mountain_door

# 关门
event entity @e[type=aw:door] aw:close_door

# 添加迷雾
fog @a remove gameFog
fog @a push aw:mountain_temple gameFog

# 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§7山峦神殿"
