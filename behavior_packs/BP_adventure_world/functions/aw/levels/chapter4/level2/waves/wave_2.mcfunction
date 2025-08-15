# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -156 8 -1 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/events/levels/wave_2

# --- 生成怪物生成器 ---

## 流浪者
summon aw:spawner -157 11 1 0 0 aw:spawn_stray_3
summon aw:spawner -157 10 12 0 0 aw:spawn_stray_3
## 苦力怕
summon aw:spawner -156 7 6 0 0 aw:spawn_creeper_speed
summon aw:spawner -151 7 0 0 0 aw:spawn_creeper_hard
summon aw:spawner -161 7 2 0 0 aw:spawn_creeper_normal
summon aw:spawner -149 7 12 0 0 aw:spawn_creeper_energy
## 溺尸
summon aw:spawner -159 7 8 0 0 aw:spawn_drowned_3
summon aw:spawner -154 7 3 0 0 aw:spawn_drowned_3
