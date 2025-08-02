# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -156 -11 14 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 守卫者
summon aw:spawner -157 -17 6 0 0 aw:spawn_guardian
## 流浪者
summon aw:spawner -162 -8 10 0 0 aw:spawn_stray_2
summon aw:spawner -156 -8 1 0 0 aw:spawn_stray_2
summon aw:spawner -151 -7 8 0 0 aw:spawn_stray_3
## 溺尸
summon aw:spawner -163 -8 -1 0 0 aw:spawn_drowned_2
summon aw:spawner -163 -9 14 0 0 aw:spawn_drowned_2
summon aw:spawner -150 -10 -2 0 0 aw:spawn_drowned_2
summon aw:spawner -154 -15 12 0 0 aw:spawn_drowned_3
summon aw:spawner -157 -15 -2 0 0 aw:spawn_drowned_3
