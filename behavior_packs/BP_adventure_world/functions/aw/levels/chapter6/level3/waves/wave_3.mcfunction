# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 蠹虫
summon aw:spawner -79 -38 -4 0 0 aw:spawn_silverfish_1
summon aw:spawner -77 -38 -4 0 0 aw:spawn_silverfish_1
summon aw:spawner -73 -38 -4 0 0 aw:spawn_silverfish_1
summon aw:spawner -71 -38 -4 0 0 aw:spawn_silverfish_1
## 骷髅敢死队
summon aw:spawner -75 -38 -4 0 0 aw:spawn_skeleton_sword_2
## 骷髅
summon aw:spawner -81 -38 4 0 0 aw:spawn_skeleton_3
summon aw:spawner -69 -38 5 0 0 aw:spawn_skeleton_4
## 僵尸
summon aw:spawner -75 -37 -14 0 0 aw:spawn_zombie_4
summon aw:spawner -76 -37 -14 0 0 aw:spawn_zombie_4
