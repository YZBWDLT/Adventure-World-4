# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -172 -20 11 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -180 -17 10 0 0 aw:spawn_drowned_2
## 守卫者
summon aw:spawner -186 -21 15 0 0 aw:spawn_guardian
summon aw:spawner -185 -21 5 0 0 aw:spawn_guardian
summon aw:spawner -177 -21 7 0 0 aw:spawn_guardian
summon aw:spawner -178 -21 13 0 0 aw:spawn_guardian
