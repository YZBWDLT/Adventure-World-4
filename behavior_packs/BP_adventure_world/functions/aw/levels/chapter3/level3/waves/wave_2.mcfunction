# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -163 -20 28 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/events/levels/wave_2

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -156 -24 29 0 0 aw:spawn_drowned_2
summon aw:spawner -163 -22 34 0 0 aw:spawn_drowned_2
## 三叉戟溺尸
summon aw:spawner -169 -32 29 0 0 aw:spawn_drowned_trident
## 守卫者
summon aw:spawner -162 -31 34 0 0 aw:spawn_guardian
summon aw:spawner -162 -32 29 0 0 aw:spawn_guardian
