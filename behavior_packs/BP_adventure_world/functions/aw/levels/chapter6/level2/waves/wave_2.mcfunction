# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -80 -18 -48 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/events/levels/wave_2

# --- 生成怪物生成器 ---

## 女巫
summon aw:spawner -81 -21 -37 0 0 aw:spawn_witch
## 骷髅
summon aw:spawner -74 -19 -47 0 0 aw:spawn_skeleton_3
## 洞穴蜘蛛
summon aw:spawner -80 -20 -46 0 0 aw:spawn_cave_spider_2
summon aw:spawner -77 -21 -41 0 0 aw:spawn_cave_spider_3
## 骷髅敢死队
summon aw:spawner -72 -19 -34 0 0 aw:spawn_skeleton_sword_2
