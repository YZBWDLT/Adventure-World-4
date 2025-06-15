# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -164 12 -17 0 0 aw:spawn_drowned_2
summon aw:spawner -160 17 -25 0 0 aw:spawn_drowned_2
## 流浪者
summon aw:spawner -160 12 -22 0 0 aw:spawn_stray_2
summon aw:spawner -165 17 -16 0 0 aw:spawn_stray_2

# --- 雪塌陷 ---
structure load aw:4_1_phase2 -168 16 -23 0_degrees none block_by_block 1.25
titleraw @a subtitle {"rawtext":[{"translate":"第 §a2 §f波 | §3小心！雪塌陷了！"}]}
camerashake add @a 1.00 2.50
