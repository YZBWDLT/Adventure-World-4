# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -119 -16 103 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 僵尸猪灵
summon aw:spawner -143 -17 100 0 0 aw:spawn_zombified_piglin_2
summon aw:spawner -130 -18 109 0 0 aw:spawn_zombified_piglin_2
summon aw:spawner -126 -17 112 0 0 aw:spawn_zombified_piglin_2
summon aw:spawner -118 -16 107 0 0 aw:spawn_zombified_piglin_3
## 猪灵
summon aw:spawner -129 -17 98 0 0 aw:spawn_piglin_1
summon aw:spawner -141 -18 105 0 0 aw:spawn_piglin_1
summon aw:spawner -145 -17 111 0 0 aw:spawn_piglin_2
summon aw:spawner -133 -10 105 0 0 aw:spawn_piglin_2
