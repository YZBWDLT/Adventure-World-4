# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -194 -17 97 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/events/levels/wave_2

# --- 生成怪物生成器 ---

## 恶魂
summon aw:spawner -202 -7 107 0 0 aw:spawn_ghast
## 僵尸猪灵
summon aw:spawner -206 -17 101 0 0 aw:spawn_zombified_piglin_3
summon aw:spawner -209 -17 98 0 0 aw:spawn_zombified_piglin_4
summon aw:spawner -211 -17 95 0 0 aw:spawn_zombified_piglin_4
## 猪灵
summon aw:spawner -209 -17 91 0 0 aw:spawn_piglin_3
summon aw:spawner -210 -17 93 0 0 aw:spawn_piglin_4
summon aw:spawner -206 -17 89 0 0 aw:spawn_piglin_4
## 骷髅
summon aw:spawner -195 -9 93 0 0 aw:spawn_skeleton_3
summon aw:spawner -201 -11 96 0 0 aw:spawn_skeleton_4
