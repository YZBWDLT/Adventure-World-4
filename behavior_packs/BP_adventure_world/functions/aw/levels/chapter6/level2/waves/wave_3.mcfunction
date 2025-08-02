# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -80 -18 -48 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 骷髅
summon aw:spawner -80 -16 -41 0 0 aw:spawn_skeleton_3
summon aw:spawner -74 -16 -37 0 0 aw:spawn_skeleton_3
summon aw:spawner -77 -11 -45 0 0 aw:spawn_skeleton_4
## 女巫
summon aw:spawner -74 -16 -44 0 0 aw:spawn_witch
## 僵尸
summon aw:spawner -77 -21 -40 0 0 aw:spawn_zombie_3
summon aw:spawner -75 -21 -40 0 0 aw:spawn_zombie_3
summon aw:spawner -76 -21 -41 0 0 aw:spawn_zombie_4
summon aw:spawner -76 -21 -39 0 0 aw:spawn_zombie_4
## 洞穴蜘蛛
summon aw:spawner -76 -21 -40 0 0 aw:spawn_cave_spider_3
