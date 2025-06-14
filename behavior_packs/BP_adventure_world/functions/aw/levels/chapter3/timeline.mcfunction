# ===== 第 3 章时间线 =====

# --- 游戏时时间线 ---

execute if score levelCompleted data matches 0 if score level data matches 0 run function aw/levels/chapter3/level0/gaming
execute if score levelCompleted data matches 0 if score level data matches 1 run function aw/levels/chapter3/level1/gaming
execute if score levelCompleted data matches 0 if score level data matches 2 run function aw/levels/chapter3/level2/gaming
execute if score levelCompleted data matches 0 if score level data matches 3 run function aw/levels/chapter3/level3/gaming
execute if score levelCompleted data matches 0 if score level data matches 4 run function aw/levels/chapter3/level4/gaming

# --- 游戏后时间线 ---

execute if score levelCompleted data matches 1 if score level data matches 0 run function aw/levels/chapter3/level0/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 1 run function aw/levels/chapter3/level1/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 2 run function aw/levels/chapter3/level2/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 3 run function aw/levels/chapter3/level3/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 4 run function aw/levels/chapter3/level4/after_gaming

# --- 在关卡开放之前清除水 ---
execute if score playedSecond time matches 1 if score chapter data matches 3 if score level data matches 0..1 run function aw/levels/chapter3/level2/events/clear_water
execute if score playedSecond time matches 1 if score chapter data matches 3 if score level data matches 0..3 run function aw/levels/chapter3/level4/events/clear_water

# --- 气泡粒子 ---
execute if score tick time matches 9 run particle aw:bubble_bottom -176 -24 24
execute if score tick time matches 9 run particle aw:bubble_top -173 5 23
