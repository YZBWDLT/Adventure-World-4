# ===== 章节初始化 =====
# 山峦神殿

# --- 各关的门 ---
## 打开并移除上一章的门，防止因特殊情况存在门未打开的情况导致卡关
execute as @e[type=aw:door] at @s run function aw/lib/events/remove_door
## 6-1
summon aw:door -76 -31 -46 0 0 aw:set_mountain_door
summon aw:door -82 -31 -63 90 0 aw:set_mountain_door
## 6-2
summon aw:door -80 -19 -50 0 0 aw:set_mountain_door
summon aw:door -71 -19 -30 0 0 aw:set_mountain_door
## 6-3
summon aw:door -75 -37 -17 0 0 aw:set_mountain_door
summon aw:door -75 -39 8 0 0 aw:set_mountain_door
## 6-4
summon aw:door -75 -39 20 0 0 aw:set_mountain_door
## 额外生成封堵 6-3 的黑曜石
fill -74 -32 -23 -77 -32 -22 obsidian keep

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:mountain_temple gameFog

# --- 生成章节名 ---
event entity @e[has_property={aw:marker_type="name"}] aw:remove_immediately
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§7山峦神殿"

# --- 加载初始结构 ---
structure load aw:6_3_lava_2 -82 -40 -7
structure load aw:6_4_no_lava -89 -40 21
