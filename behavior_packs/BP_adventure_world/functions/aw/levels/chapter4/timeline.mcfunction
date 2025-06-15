# ===== 第 4 章时间线 =====

# --- 游戏时时间线 ---

execute if score levelCompleted data matches 0 if score level data matches 0 run function aw/levels/chapter4/level0/gaming
execute if score levelCompleted data matches 0 if score level data matches 1 run function aw/levels/chapter4/level1/gaming
execute if score levelCompleted data matches 0 if score level data matches 2 run function aw/levels/chapter4/level2/gaming
execute if score levelCompleted data matches 0 if score level data matches 3 run function aw/levels/chapter4/level3/gaming
execute if score levelCompleted data matches 0 if score level data matches 4 run function aw/levels/chapter4/level4/gaming

# --- 游戏后时间线 ---

execute if score levelCompleted data matches 1 if score level data matches 0 run function aw/levels/chapter4/level0/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 1 run function aw/levels/chapter4/level1/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 2 run function aw/levels/chapter4/level2/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 3 run function aw/levels/chapter4/level3/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 4 run function aw/levels/chapter4/level4/after_gaming
