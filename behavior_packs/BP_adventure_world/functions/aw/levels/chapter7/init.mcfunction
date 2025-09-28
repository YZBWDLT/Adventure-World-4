# ===== 章节初始化 =====
# 封印神殿

# --- 各关的门 ---
## 打开并移除上一章的门，防止因特殊情况存在门未打开的情况导致卡关
execute as @e[type=aw:door] at @s run function aw/lib/events/remove_door
## 7-1
summon aw:door -151 -18 101 90 0 aw:set_final_door
## 7-2
summon aw:door -159 -18 110 90 0 aw:set_final_door
summon aw:door -184 -18 97 90 0 aw:set_final_door
## 7-3
summon aw:door -192 -18 97 90 0 aw:set_final_door
summon aw:door -217 -18 99 90 0 aw:set_final_door
## 7-4
summon aw:door -223 -18 99 90 0 aw:set_final_door
fill -235 -30 97 -233 -30 99 red_stained_glass

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:final_temple gameFog

# --- 生成章节名 ---
event entity @e[has_property={aw:marker_type="name"}] aw:remove_immediately
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§c封印神殿"

# --- 加载初始结构 ---
fill -224 -27 111 -244 -29 85 lava keep
structure load aw:7_5_phase1 -246 -54 23
