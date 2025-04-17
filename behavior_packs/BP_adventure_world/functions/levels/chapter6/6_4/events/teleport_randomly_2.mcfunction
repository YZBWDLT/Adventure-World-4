# ===== 随机传送 =====
# 此为倒计时结束之后所执行的命令

# --- 随机位置 ---

scoreboard players random blazeKing.randomTeleport data 1 5

execute if score blazeKing.randomTeleport data matches 1 run tp @e[type=aw:blaze_king] -75 -37 35
execute if score blazeKing.randomTeleport data matches 2 run tp @e[type=aw:blaze_king] -66 -39 26
execute if score blazeKing.randomTeleport data matches 3 run tp @e[type=aw:blaze_king] -84 -39 44
execute if score blazeKing.randomTeleport data matches 4 run tp @e[type=aw:blaze_king] -66 -37 44
execute if score blazeKing.randomTeleport data matches 5 run tp @e[type=aw:blaze_king] -84 -37 26

scoreboard players reset blazeKing.randomTeleport data

# --- 播放音效 ---

execute as @a at @s run playsound mob.shulker.teleport @s ~~~ 1 0.5

# --- 重置时间 ---
scoreboard players random blazeKing.randomTeleport time 6 10
