# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -193 -21 24 0 0 aw:spawn_drowned_2
summon aw:spawner -193 -21 35 0 0 aw:spawn_drowned_2
