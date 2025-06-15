# ===== 第 1 波 =====

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_1

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -161 17 -20 0 0 aw:spawn_drowned_2
summon aw:spawner -163 17 -17 0 0 aw:spawn_drowned_2
summon aw:spawner -162 17 -22 0 0 aw:spawn_drowned_3
## 守卫者
summon aw:spawner -165 17 -17 0 0 aw:spawn_guardian
