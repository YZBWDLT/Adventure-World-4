# ===== 第 4 波 =====

# --- 波潮完成通用函数 ---
execute positioned -75 -36 -15 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_4

# --- 生成怪物生成器 ---

## 蠹虫
summon aw:spawner -79 -36 -12 0 0 aw:spawn_silverfish_2
summon aw:spawner -69 -38 -2 0 0 aw:spawn_silverfish_3
summon aw:spawner -82 -38 -2 0 0 aw:spawn_silverfish_3
## 女巫
summon aw:spawner -68 -37 -11 0 0 aw:spawn_witch
## 僵尸
summon aw:spawner -70 -39 3 0 0 aw:spawn_zombie_4
summon aw:spawner -70 -39 4 0 0 aw:spawn_zombie_4
summon aw:spawner -70 -39 5 0 0 aw:spawn_zombie_4
## 洞穴蜘蛛
summon aw:spawner -69 -38 -1 0 0 aw:spawn_cave_spider_3
summon aw:spawner -69 -38 -3 0 0 aw:spawn_cave_spider_3
summon aw:spawner -82 -38 -1 0 0 aw:spawn_cave_spider_3
summon aw:spawner -82 -38 -3 0 0 aw:spawn_cave_spider_3
## 骷髅
summon aw:spawner -78 -35 -3 0 0 aw:spawn_skeleton_4
summon aw:spawner -71 -34 -2 0 0 aw:spawn_skeleton_4

# --- 岩浆下降 ---
structure load aw:6_3_no_lava -82 -40 -7
titleraw @a subtitle {"rawtext":[{"translate":"第 §a4 §f波 | §c注意！岩浆下降了！"}]}
