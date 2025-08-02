# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -163 -20 28 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -156 -24 30 0 0 aw:spawn_drowned_2
summon aw:spawner -162 -28 24 0 0 aw:spawn_drowned_2
summon aw:spawner -167 -20 34 0 0 aw:spawn_drowned_3
## 三叉戟溺尸
summon aw:spawner -162 -32 29 0 0 aw:spawn_drowned_trident
