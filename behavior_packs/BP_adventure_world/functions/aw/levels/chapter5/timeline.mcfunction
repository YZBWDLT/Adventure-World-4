# ===== 第 5 章时间线 =====

# --- 游戏时时间线 ---

execute if score levelCompleted data matches 0 if score level data matches 0 run function aw/levels/chapter5/level0/gaming

# --- 游戏后时间线 ---

execute if score levelCompleted data matches 1 if score level data matches 0 run function aw/levels/chapter5/level0/after_gaming
