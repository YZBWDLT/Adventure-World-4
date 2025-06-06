# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 蜘蛛
summon aw:spawner -75 21 60 0 0 aw:spawn_spider_1
summon aw:spawner -75 21 68 0 0 aw:spawn_spider_2
## 骷髅
summon aw:spawner -75 18 70 0 0 aw:spawn_skeleton_2
