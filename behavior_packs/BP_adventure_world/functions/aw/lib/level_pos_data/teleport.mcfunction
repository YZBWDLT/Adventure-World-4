# ===== 传送玩家到重生点处 =====
# 将玩家传送到已设置的重生点处。适用于应传送到本关重生点的情况。
# 调用此方法时：需修饰执行者为应传送的玩家（execute as @a[...]）。

# 村庄
    execute if score chapter data matches 0 if score level data matches 1 run tp @s -27 6 -48
    execute if score chapter data matches 0 if score level data matches 2 run tp @s -26 1 -37
    execute if score chapter data matches 0 if score level data matches 3 run tp @s 36 1 -22
    execute if score chapter data matches 0 if score level data matches 4 run tp @s -16 1 82
    execute if score chapter data matches 0 if score level data matches 5 run tp @s -18 -3 99

# 第 1 章
    execute if score chapter data matches 1 if score level data matches 0 run tp @s -117 1 -6
    execute if score chapter data matches 1 if score level data matches 1 run tp @s -117 2 16
    execute if score chapter data matches 1 if score level data matches 2 run tp @s -126 5 52
    execute if score chapter data matches 1 if score level data matches 3 run tp @s -137 12 33

# 第 2 章
    execute if score chapter data matches 2 if score level data matches 0 run tp @s -79 19 26
    execute if score chapter data matches 2 if score level data matches 1 run tp @s -75 19 60
    execute if score chapter data matches 2 if score level data matches 2 run tp @s -72 1 69
    execute if score chapter data matches 2 if score level data matches 3 run tp @s -143 -20 61

# 第 3 章
    execute if score chapter data matches 3 if score level data matches 0 run tp @s -173 -20 30
    execute if score chapter data matches 3 if score level data matches 1 run tp @s -188 -20 29
    execute if score chapter data matches 3 if score level data matches 2 run tp @s -172 -20 11
    execute if score chapter data matches 3 if score level data matches 3 run tp @s -163 -20 28
    execute if score chapter data matches 3 if score level data matches 4 run tp @s -170 -14 23

# 第 4 章
    execute if score chapter data matches 4 if score level data matches 0 run tp @s -173 18 -8
    execute if score chapter data matches 4 if score level data matches 1 run tp @s -168 18 -20
    execute if score chapter data matches 4 if score level data matches 2 run tp @s -156 8 -1
    execute if score chapter data matches 4 if score level data matches 3 run tp @s -156 -11 14
    execute if score chapter data matches 4 if score level data matches 4 run tp @s -141 -30 6

# 第 5 章
    execute if score chapter data matches 5 if score level data matches 0 run tp @s -95 -30 -6

# 第 6 章
    execute if score chapter data matches 6 if score level data matches 0 run tp @s -81 -30 -28
    execute if score chapter data matches 6 if score level data matches 1 run tp @s -76 -30 -48
    execute if score chapter data matches 6 if score level data matches 2 run tp @s -80 -18 -46
    execute if score chapter data matches 6 if score level data matches 3 run tp @s -75 -36 -15
    execute if score chapter data matches 6 if score level data matches 4 run tp @s -75 -38 22

# 第 7 章
    execute if score chapter data matches 7 if score level data matches 0 run tp @s -87 -39 96
    execute if score chapter data matches 7 if score level data matches 1 run tp @s -119 -16 103
    execute if score chapter data matches 7 if score level data matches 2 run tp @s -161 -17 110
    execute if score chapter data matches 7 if score level data matches 3 run tp @s -194 -17 97
    execute if score chapter data matches 7 if score level data matches 4 run tp @s -225 -17 99
    execute if score chapter data matches 7 if score level data matches 5 run tp @s -225 -47 44

# 结束
    execute if score chapter data matches 10 if score level data matches 1 run tp @s -27 7 -48
    execute if score chapter data matches 10 if score level data matches 2 run tp @s -27 7 -48
    execute if score chapter data matches 10 if score level data matches 3 run tp @s -16 1 82
