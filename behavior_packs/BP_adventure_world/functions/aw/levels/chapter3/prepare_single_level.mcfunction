# ===== 准备开启单关卡试炼 =====

# 3-1
execute if score temp.level settings matches 7 run tp @a -188 -20 29
execute if score temp.level settings matches 7 run spawnpoint @a -173 -20 30
execute if score temp.level settings matches 7 run summon aw:door -198 -21 29 0 0 aw:set_lake_door "3-1"

# 3-2
execute if score temp.level settings matches 8 run tp @a -172 -20 11
execute if score temp.level settings matches 7 run spawnpoint @a -188 -20 29
execute if score temp.level settings matches 8 run summon aw:door -172 -21 13 0 0 aw:set_lake_door "3-2"

# 3-3
execute if score temp.level settings matches 9 run tp @a -163 -20 28
execute if score temp.level settings matches 7 run spawnpoint @a -172 -20 11
execute if score temp.level settings matches 9 run summon aw:door -163 -21 26 0 0 aw:set_lake_door "3-3"

# 3-4
execute if score temp.level settings matches 10 run tp @a -170 -14 23
execute if score temp.level settings matches 7 run spawnpoint @a -163 -20 28
execute if score temp.level settings matches 10 run summon aw:door -168 -15 23 90 0 aw:set_lake_door "3-4"
execute if score temp.level settings matches 10 run summon aw:door -173 17 18 0 0 aw:set_lake_door "3-4"

# 关门
event entity @e[type=aw:door] aw:close_door

# 添加迷雾
fog @a remove gameFog
fog @a push aw:lake_temple gameFog

# 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§b湖泊神殿"
