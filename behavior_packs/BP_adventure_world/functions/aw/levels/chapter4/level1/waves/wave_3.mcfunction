# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -168 18 -20 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/events/levels/wave_3

# --- 生成怪物生成器 ---

## 流浪者
summon aw:spawner -163 17 -18 0 0 aw:spawn_stray_3
## 溺尸
summon aw:spawner -160 17 -23 0 0 aw:spawn_drowned_2
summon aw:spawner -165 17 -23 0 0 aw:spawn_drowned_2
summon aw:spawner -164 12 -18 0 0 aw:spawn_drowned_2
## 守卫者
summon aw:spawner -160 12 -22 0 0 aw:spawn_guardian
