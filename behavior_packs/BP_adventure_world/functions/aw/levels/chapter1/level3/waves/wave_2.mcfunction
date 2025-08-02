# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -137 12 33 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 尸壳
summon aw:spawner -136 11 22 0 0 aw:spawn_husk
summon aw:spawner -131 11 18 0 0 aw:spawn_husk_baby
## 骷髅
summon aw:spawner -136 18 20 0 0 aw:spawn_skeleton_1
