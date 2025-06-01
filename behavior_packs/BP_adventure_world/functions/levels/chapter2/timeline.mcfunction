# ===== 第 2 章时间线 =====

# --- 游戏时时间线 ---

execute if score levelCompleted data matches 0 if score level data matches 0 run function levels/chapter2/level0/gaming
execute if score levelCompleted data matches 0 if score level data matches 1 run function levels/chapter2/level1/gaming
execute if score levelCompleted data matches 0 if score level data matches 2 run function levels/chapter2/level2/gaming
execute if score levelCompleted data matches 0 if score level data matches 3 run function levels/chapter2/level3/gaming

# --- 游戏后时间线 ---

execute if score levelCompleted data matches 1 if score level data matches 0 run function levels/chapter2/level0/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 1 run function levels/chapter2/level1/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 2 run function levels/chapter2/level2/after_gaming
execute if score levelCompleted data matches 1 if score level data matches 3 run function levels/chapter2/level3/after_gaming

# --- 第二章陷阱 ---
# 每 10 秒执行 1 次
execute if score tick time matches 10 if score playedSecond time matches 0 run function levels/chapter2/traps
execute if score tick time matches 10 if score playedSecond time matches 10 run function levels/chapter2/traps
execute if score tick time matches 10 if score playedSecond time matches 20 run function levels/chapter2/traps
execute if score tick time matches 10 if score playedSecond time matches 30 run function levels/chapter2/traps
execute if score tick time matches 10 if score playedSecond time matches 40 run function levels/chapter2/traps
execute if score tick time matches 10 if score playedSecond time matches 50 run function levels/chapter2/traps
