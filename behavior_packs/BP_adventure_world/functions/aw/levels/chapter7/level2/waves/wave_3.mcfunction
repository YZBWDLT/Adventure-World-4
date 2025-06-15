# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 猪灵蛮兵
summon aw:spawner -162 -18 106 0 0 aw:spawn_piglin_brute
## 岩浆怪
summon aw:spawner -171 -17 100 0 0 aw:spawn_magma_cube_large
## 恶魂
summon aw:spawner -168 -4 108 0 0 aw:spawn_ghast
