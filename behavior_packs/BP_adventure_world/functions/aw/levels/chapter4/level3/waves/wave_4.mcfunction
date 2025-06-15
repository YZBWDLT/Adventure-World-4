# ===== 第 4 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_4

# --- 生成怪物生成器 ---

## 流浪者
summon aw:spawner -150 -10 0 0 0 aw:spawn_stray_3
summon aw:spawner -163 -9 14 0 0 aw:spawn_stray_3
summon aw:spawner -151 -8 13 0 0 aw:spawn_stray_3
## 三叉戟溺尸
summon aw:spawner -157 -17 6 0 0 aw:spawn_drowned_trident
