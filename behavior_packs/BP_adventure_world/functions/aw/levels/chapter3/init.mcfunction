# ===== 章节初始化 =====
# 湖泊神殿

# --- 各关的门 ---
## 打开并移除上一章的门，防止因特殊情况存在门未打开的情况导致卡关
execute as @e[type=aw:door] at @s run function aw/lib/events/remove_door
## 3-1
summon aw:door -198 -21 29 0 0 aw:set_lake_door "3-1"
## 3-2
summon aw:door -172 -21 13 0 0 aw:set_lake_door "3-2"
## 3-3
summon aw:door -163 -21 26 0 0 aw:set_lake_door "3-3"
## 3-4
summon aw:door -168 -15 23 90 0 aw:set_lake_door "3-4"
summon aw:door -173 17 18 0 0 aw:set_lake_door "3-4"
## 封闭 3-2、3-3 和 3-4
event entity @e[type=aw:door,name="3-2"] aw:close_door
event entity @e[type=aw:door,name="3-3"] aw:close_door
event entity @e[type=aw:door,name="3-4"] aw:close_door

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:lake_temple gameFog

# --- 生成章节名 ---
event entity @e[has_property={aw:marker_type="name"}] aw:remove_immediately
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§b湖泊神殿"

# --- 加载初始结构 ---
function aw/levels/chapter3/level2/events/clear_water
structure load aw:3_2_phase1 -192 -22 -1
function aw/levels/chapter3/level4/events/clear_water
structure load aw:3_4_layer1_nowater -178 -16 18
