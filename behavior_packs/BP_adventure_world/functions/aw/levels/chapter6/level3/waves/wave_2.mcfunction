# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 僵尸
summon aw:spawner -71 -38 -2 0 0 aw:spawn_zombie_3
summon aw:spawner -79 -38 -2 0 0 aw:spawn_zombie_4
## 骷髅
summon aw:spawner -76 -38 -2 0 0 aw:spawn_skeleton_4
## 蜘蛛
summon aw:spawner -79 -37 -10 0 0 aw:spawn_spider_3
## 女巫
summon aw:spawner -72 -37 -8 0 0 aw:spawn_witch
## 洞穴蜘蛛
summon aw:spawner -79 -35 -3 0 0 aw:spawn_cave_spider_3
summon aw:spawner -70 -34 -3 0 0 aw:spawn_cave_spider_3

# --- 岩浆下降 ---
structure load aw:6_3_lava_1 -82 -40 -7
titleraw @a subtitle {"rawtext":[{"translate":"第 §a2 §f波 | §c注意！岩浆下降了！"}]}
