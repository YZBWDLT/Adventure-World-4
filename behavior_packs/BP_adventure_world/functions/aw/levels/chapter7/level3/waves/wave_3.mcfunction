# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -194 -17 97 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 骷髅敢死队
summon aw:spawner -203 -16 97 0 0 aw:spawn_skeleton_sword_2
## 猪灵
summon aw:spawner -199 -18 105 0 0 aw:spawn_piglin_3
summon aw:spawner -200 -18 105 0 0 aw:spawn_piglin_4
summon aw:spawner -201 -18 105 0 0 aw:spawn_piglin_3
summon aw:spawner -202 -18 105 0 0 aw:spawn_piglin_4
summon aw:spawner -203 -18 105 0 0 aw:spawn_piglin_3
summon aw:spawner -204 -18 105 0 0 aw:spawn_piglin_4
## 骷髅
summon aw:spawner -215 -6 95 0 0 aw:spawn_skeleton_4
