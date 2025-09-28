# ===== 章节初始化 =====
# 丛林神殿

# --- 各关的门 ---
## 打开并移除上一章的门，防止因特殊情况存在门未打开的情况导致卡关
execute as @e[type=aw:door] at @s run function aw/lib/events/remove_door
## 2-1
summon aw:door -75 18 58 0 0 aw:set_forest_door
summon aw:door -69 18 65 90 0 aw:set_forest_door
## 2-2
summon aw:door -70 0 69 90 0 aw:set_forest_door
summon aw:door -104 -17 68 90 0 aw:set_forest_door
## 2-3
summon aw:door -141 -21 61 90 0 aw:set_forest_door
summon aw:door -167 -21 61 90 0 aw:set_forest_door

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:forest_temple gameFog

# --- 生成章节名 ---
event entity @e[has_property={aw:marker_type="name"}] aw:remove_immediately
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§a丛林神殿"
