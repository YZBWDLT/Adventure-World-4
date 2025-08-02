# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -156 8 -1 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 流浪者
summon aw:spawner -158 10 11 0 0 aw:spawn_stray_3
summon aw:spawner -158 10 0 0 0 aw:spawn_stray_3
summon aw:spawner -152 11 9 0 0 aw:spawn_stray_3
## 三叉戟溺尸
summon aw:spawner -156 7 6 0 0 aw:spawn_drowned_trident
## 溺尸
summon aw:spawner -150 7 0 0 0 aw:spawn_drowned_3
summon aw:spawner -161 7 2 0 0 aw:spawn_drowned_3
summon aw:spawner -161 7 12 0 0 aw:spawn_drowned_3
summon aw:spawner -153 10 10 0 0 aw:spawn_drowned_3
