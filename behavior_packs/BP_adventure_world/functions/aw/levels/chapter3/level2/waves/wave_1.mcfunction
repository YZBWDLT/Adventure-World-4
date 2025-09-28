# ===== 第 1 波 =====

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/events/levels/wave_1

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -191 -21 10 0 0 aw:spawn_drowned_1
summon aw:spawner -181 -17 12 0 0 aw:spawn_drowned_1
summon aw:spawner -180 -21 2 0 0 aw:spawn_drowned_2
summon aw:spawner -183 -21 10 0 0 aw:spawn_drowned_2
## 骷髅
summon aw:spawner -180 -17 9 0 0 aw:spawn_skeleton_1

# --- 清除水 ---
function aw/levels/chapter3/level2/events/clear_water
