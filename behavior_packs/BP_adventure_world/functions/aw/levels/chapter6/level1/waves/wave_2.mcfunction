# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -76 -30 -48 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 骷髅
summon aw:spawner -77 -31 -47 0 0 aw:spawn_skeleton_3
summon aw:spawner -76 -31 -53 0 0 aw:spawn_skeleton_3
## 蜘蛛
summon aw:spawner -73 -28 -54 0 0 aw:spawn_spider_3
## 洞穴蜘蛛
summon aw:spawner -71 -31 -58 0 0 aw:spawn_cave_spider_2
## 僵尸
summon aw:spawner -75 -31 -62 0 0 aw:spawn_zombie_3
summon aw:spawner -80 -27 -58 0 0 aw:spawn_zombie_4
## 苦力怕
summon aw:spawner -70 -30 -49 0 0 aw:spawn_creeper_hard
