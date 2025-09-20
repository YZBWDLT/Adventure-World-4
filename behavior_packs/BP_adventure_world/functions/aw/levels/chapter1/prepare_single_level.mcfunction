# ===== 准备开启单关卡试炼 =====

# 1-1
execute if score temp.level settings matches 1 run tp @a -117 2 16
execute if score temp.level settings matches 1 run spawnpoint @a -117 1 -6
execute if score temp.level settings matches 1 run summon aw:door -117 1 14 0 0 aw:set_desert_door
execute if score temp.level settings matches 1 run summon aw:door -117 1 32 0 0 aw:set_desert_door

# 1-2
execute if score temp.level settings matches 2 run tp @a -126 6 52
execute if score temp.level settings matches 2 run spawnpoint @a -117 2 16
execute if score temp.level settings matches 2 run summon aw:door -126 5 50 0 0 aw:set_desert_door

# 1-3
execute if score temp.level settings matches 3 run tp @a -137 12 33
execute if score temp.level settings matches 3 run spawnpoint @a -126 6 52
execute if score temp.level settings matches 3 run summon aw:door -139 11 33 90 0 aw:set_desert_door
execute if score temp.level settings matches 3 run summon aw:door -121 18 26 90 0 aw:set_desert_door

# 关门
event entity @e[type=aw:door] aw:close_door

# 添加迷雾
fog @a remove gameFog
fog @a push aw:desert_temple gameFog

# 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§e沙漠神殿"
