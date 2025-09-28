# ===== 章节初始化 =====
# 寒冰神殿

# --- 各关的门 ---
## 打开并移除上一章的门，防止因特殊情况存在门未打开的情况导致卡关
execute as @e[type=aw:door] at @s run function aw/lib/events/remove_door
## 4-1
summon aw:door -170 17 -20 90 0 aw:set_frost_door
## 4-2
summon aw:door -156 7 -3 0 0 aw:set_frost_door "4-2"
summon aw:door -156 7 16 0 0 aw:set_frost_door "4-2"
## 4-3
summon aw:door -156 -12 16 0 0 aw:set_frost_door
## 4-4
summon aw:door -143 -31 6 90 0 aw:set_frost_door
summon aw:door -117 -31 6 90 0 aw:set_frost_door
## 封闭 4-2
event entity @e[type=aw:door,name="4-2"] aw:close_door
## 用我超！冰！封闭 4-3 出口（
fill -156 -18 5 -158 -18 7 ice replace water

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:frost_temple gameFog

# --- 生成章节名 ---
event entity @e[has_property={aw:marker_type="name"}] aw:remove_immediately
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§9寒冰神殿"

# --- 加载初始结构 ---
structure load aw:4_1_phase1 -168 16 -23
