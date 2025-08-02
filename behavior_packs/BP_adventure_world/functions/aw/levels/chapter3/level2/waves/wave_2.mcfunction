# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -172 -20 11 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -181 -17 13 0 0 aw:spawn_drowned_2
summon aw:spawner -178 -17 10 0 0 aw:spawn_drowned_2
summon aw:spawner -180 -17 8 0 0 aw:spawn_drowned_2
summon aw:spawner -183 -17 11 0 0 aw:spawn_drowned_2
## 守卫者
summon aw:spawner -180 -21 9 0 0 aw:spawn_guardian

# --- 水位上涨 ---
structure load aw:3_2_phase2 -192 -22 -1 0_degrees none layer_by_layer 4.00
titleraw @a subtitle {"rawtext":[{"translate":"第 §a2 §f波 | §c注意！水位上涨！"}]}
