# ===== 准备开启单关卡试炼 =====

# 7-1
execute if score temp.level settings matches 19 run tp @a -119 -16 103
execute if score temp.level settings matches 19 run spawnpoint @a -119 -16 103
execute if score temp.level settings matches 19 run summon aw:door -151 -18 101 90 0 aw:set_final_door

# 7-2
execute if score temp.level settings matches 20 run tp @a -161 -17 110
execute if score temp.level settings matches 20 run spawnpoint @a -119 -16 103
execute if score temp.level settings matches 20 run summon aw:door -159 -18 110 90 0 aw:set_final_door
execute if score temp.level settings matches 20 run summon aw:door -184 -18 97 90 0 aw:set_final_door

# 7-3
execute if score temp.level settings matches 21 run tp @a -194 -17 97
execute if score temp.level settings matches 21 run spawnpoint @a -161 -17 110
execute if score temp.level settings matches 21 run summon aw:door -192 -18 97 90 0 aw:set_final_door
execute if score temp.level settings matches 21 run summon aw:door -217 -18 99 90 0 aw:set_final_door

# 7-4
execute if score temp.level settings matches 22 run tp @a -225 -17 99
execute if score temp.level settings matches 22 run spawnpoint @a -194 -17 97
execute if score temp.level settings matches 22 run summon aw:door -223 -18 99 90 0 aw:set_final_door
execute if score temp.level settings matches 22 run fill -235 -30 97 -233 -30 99 red_stained_glass
execute if score temp.level settings matches 22 run fill -224 -27 111 -244 -29 85 lava keep

# 7-5
execute if score temp.level settings matches 23 run tp @a -225 -47 44
execute if score temp.level settings matches 23 run spawnpoint @a -225 -17 99

# 关门
event entity @e[type=aw:door] aw:close_door

# 添加迷雾
fog @a remove gameFog
fog @a push aw:final_temple gameFog

# 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§c封印神殿"
