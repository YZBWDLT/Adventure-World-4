# ===== 设置玩家到重生点处 =====
# 设置玩家的重生点。适用于应设置到本关重生点的情况，例如关卡已完成状态，或复活玩家时亦应设置到本关重生点。
# 调用此方法时：需修饰执行者为应设置的玩家（execute as @a[...]）。

# 村庄
execute if score chapter data matches 0 if score level data matches 1 run spawnpoint @s -27 6 -48
execute if score chapter data matches 0 if score level data matches 2 run spawnpoint @s -26 1 -37
execute if score chapter data matches 0 if score level data matches 3 run spawnpoint @s 36 1 -22
execute if score chapter data matches 0 if score level data matches 4 run spawnpoint @s -16 1 82
execute if score chapter data matches 0 if score level data matches 5 run spawnpoint @s -18 -3 99

# 第 1 章
execute if score chapter data matches 1 if score level data matches 0 run spawnpoint @s -117 1 -6
execute if score chapter data matches 1 if score level data matches 1 run spawnpoint @s -117 2 16
execute if score chapter data matches 1 if score level data matches 2 run spawnpoint @s -126 5 52
execute if score chapter data matches 1 if score level data matches 3 run spawnpoint @s -137 12 33

# 第 2 章
execute if score chapter data matches 2 if score level data matches 0 run spawnpoint @s -79 19 26
execute if score chapter data matches 2 if score level data matches 1 run spawnpoint @s -75 19 60
execute if score chapter data matches 2 if score level data matches 2 run spawnpoint @s -72 1 69
execute if score chapter data matches 2 if score level data matches 3 run spawnpoint @s -143 -20 61
