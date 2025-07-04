# ===== 第 1 波 =====

# --- 更新波数信息 ---
# （本关不显示波数）execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_1

# --- 生成怪物生成器 ---

## 烈焰王
summon aw:spawner -75 -37 35 0 0 aw:spawn_blaze_king

# --- BOSS 专属标题 ---
titleraw @a title {"rawtext":[{"translate":"§c§lBOSS 来 袭"}]}
titleraw @a subtitle {"rawtext":[{"translate":"§c6-4"}]}
