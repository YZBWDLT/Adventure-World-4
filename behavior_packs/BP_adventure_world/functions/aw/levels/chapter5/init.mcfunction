# ===== 章节初始化 =====
# 红石神殿

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:redstone_temple gameFog

# --- 生成章节名 ---
event entity @e[has_property={aw:marker_type="name"}] aw:remove_immediately
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§f红石神殿"
