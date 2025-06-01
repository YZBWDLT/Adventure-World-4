# ===== 第 1 波 =====

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function lib/modify_data/levels/wave_1

# --- 生成怪物生成器 ---

## 尸壳
summon aw:spawner -132 8 64 0 0 aw:spawn_husk
summon aw:spawner -126 7 58 0 0 aw:spawn_husk
## 骷髅
summon aw:spawner -120 11 64 0 0 aw:spawn_skeleton_1
