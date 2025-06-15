# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 守卫者
summon aw:spawner -164 -5 11 0 0 aw:spawn_guardian
summon aw:spawner -155 -5 12 0 0 aw:spawn_guardian
summon aw:spawner -151 -5 5 0 0 aw:spawn_guardian
summon aw:spawner -158 -5 0 0 0 aw:spawn_guardian
summon aw:spawner -163 -5 4 0 0 aw:spawn_guardian
## 流浪者
summon aw:spawner -156 -11 12 0 0 aw:spawn_stray_3
summon aw:spawner -160 -9 4 0 0 aw:spawn_stray_3
summon aw:spawner -155 -8 3 0 0 aw:spawn_stray_3
## 溺尸
summon aw:spawner -161 -15 13 0 0 aw:spawn_drowned_3
summon aw:spawner -151 -15 11 0 0 aw:spawn_drowned_3
summon aw:spawner -160 -15 0 0 0 aw:spawn_drowned_3
