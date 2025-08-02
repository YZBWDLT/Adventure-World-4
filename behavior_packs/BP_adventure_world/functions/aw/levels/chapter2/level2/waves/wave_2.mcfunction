# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -72 1 69 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 骷髅
summon aw:spawner -92 -9 65 0 0 aw:spawn_skeleton_1
summon aw:spawner -79 -15 70 0 0 aw:spawn_skeleton_1
summon aw:spawner -89 -17 61 0 0 aw:spawn_skeleton_1
summon aw:spawner -74 -11 62 0 0 aw:spawn_skeleton_1
summon aw:spawner -95 -1 68 0 0 aw:spawn_skeleton_1
summon aw:spawner -82 0 62 0 0 aw:spawn_skeleton_1

# --- 提示玩家弓可以秒杀骷髅 ---
tellraw @a {"rawtext":[{"translate":"§a试试用弓箭射杀骷髅吧，有奇效哦！"}]}
