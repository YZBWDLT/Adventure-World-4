# ===== 第 1 波 =====

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_1

# --- 生成怪物生成器 ---

## 蜘蛛
summon aw:spawner -75 21 69 0 0 aw:spawn_spider_1
## 骷髅
summon aw:spawner -74 21 60 0 0 aw:spawn_skeleton_1
## 僵尸
summon aw:spawner -75 18 69 0 0 aw:spawn_zombie_1
