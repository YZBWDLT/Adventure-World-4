# ===== 章节初始化 =====
# 沙漠神殿

# --- 各关的门 ---
## 打开并移除上一章的门，防止因特殊情况存在门未打开的情况导致卡关
execute as @e[type=aw:door] at @s run function aw/lib/events/remove_door
## 1-1
summon aw:door -117 1 14 0 0 aw:set_desert_door
summon aw:door -117 1 32 0 0 aw:set_desert_door
## 1-2
summon aw:door -126 5 50 0 0 aw:set_desert_door
## 1-3
summon aw:door -139 11 33 90 0 aw:set_desert_door
summon aw:door -121 18 26 90 0 aw:set_desert_door

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:desert_temple gameFog

# --- 生成章节名 ---
event entity @e[has_property={aw:marker_type="name"}] aw:remove_immediately
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§e沙漠神殿"
