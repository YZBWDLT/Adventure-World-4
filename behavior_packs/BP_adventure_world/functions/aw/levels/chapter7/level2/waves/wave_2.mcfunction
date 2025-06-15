# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function aw/lib/modify_data/levels/wave_2

# --- 生成怪物生成器 ---

## 疣猪兽
summon aw:spawner -163 -18 108 0 0 aw:spawn_hoglin_2
summon aw:spawner -162 -18 103 0 0 aw:spawn_hoglin_3
## 猪灵
summon aw:spawner -180 -18 111 0 0 aw:spawn_piglin_2
summon aw:spawner -177 -17 109 0 0 aw:spawn_piglin_2
summon aw:spawner -177 -16 107 0 0 aw:spawn_piglin_3
summon aw:spawner -181 -17 105 0 0 aw:spawn_piglin_4
