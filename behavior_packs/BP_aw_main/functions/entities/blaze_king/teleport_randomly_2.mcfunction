# ===== 随机传送 =====
# 此为倒计时结束之后所执行的命令

# --- 随机位置 ---

scoreboard players random blazeKing.randomTeleport data 1 5

execute if score randomPosition data matches 1 run tp @s -75 -37 35
execute if score randomPosition data matches 2 run tp @s -66 -39 26
execute if score randomPosition data matches 3 run tp @s -84 -39 44
execute if score randomPosition data matches 4 run tp @s -66 -37 44
execute if score randomPosition data matches 5 run tp @s -84 -37 26

scoreboard players reset blazeKing.randomTeleport data

# --- 播放音效 ---

execute as @a at @s run playsound mob.shulker.teleport @s ~~~ 1 0.5

# --- 重置时间 ---
scoreboard players random blazeKing.randomTeleport time 6 10
