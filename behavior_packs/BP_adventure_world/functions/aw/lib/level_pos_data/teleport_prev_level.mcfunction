# ===== 传送玩家到重生点处 =====
# 将玩家传送到已设置的重生点处。适用于应传送到上关重生点的情况，例如关卡失败状态。
# 调用此方法时：需修饰执行者为应传送的玩家（execute as @a[...]）。

# 村庄
execute if score chapter data matches 0 if score level data matches 1 run tp @s -27 6 -48
execute if score chapter data matches 0 if score level data matches 2 run tp @s -27 6 -48
execute if score chapter data matches 0 if score level data matches 3 run tp @s -26 1 -37
execute if score chapter data matches 0 if score level data matches 4 run tp @s 36 1 -22
execute if score chapter data matches 0 if score level data matches 5 run tp @s -16 1 82

# 第 1 章 | 与村庄隔绝开
execute if score chapter data matches 1 if score level data matches 0 run tp @s -117 1 -6
execute if score chapter data matches 1 if score level data matches 1 run tp @s -117 1 -6
execute if score chapter data matches 1 if score level data matches 2 run tp @s -117 2 16
execute if score chapter data matches 1 if score level data matches 3 run tp @s -126 5 52

# 第 2 章
execute if score chapter data matches 2 if score level data matches 0 run tp @s -137 12 33
execute if score chapter data matches 2 if score level data matches 1 run tp @s -79 19 26
execute if score chapter data matches 2 if score level data matches 2 run tp @s -75 19 60
execute if score chapter data matches 2 if score level data matches 3 run tp @s -72 1 69

# 第 3 章
execute if score chapter data matches 3 if score level data matches 0 run tp @s -143 -20 61
