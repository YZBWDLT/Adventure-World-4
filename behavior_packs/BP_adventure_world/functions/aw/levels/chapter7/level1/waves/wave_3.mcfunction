# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -119 -16 103 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/events/levels/wave_3

# --- 生成怪物生成器 ---

## 岩浆怪
summon aw:spawner -133 -18 109 0 0 aw:spawn_magma_cube_middle
## 恶魂
summon aw:spawner -123 -13 101 0 0 aw:spawn_ghast
