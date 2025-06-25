# ===== 开始随机传送 =====

# --- 随机位置 ---
scoreboard players random temp.teleportPos data 1 5
execute if score temp.teleportPos data matches 1 run tp @e[type=aw:blaze_king] -75 -37 35
execute if score temp.teleportPos data matches 2 run tp @e[type=aw:blaze_king] -66 -39 26
execute if score temp.teleportPos data matches 3 run tp @e[type=aw:blaze_king] -84 -39 44
execute if score temp.teleportPos data matches 4 run tp @e[type=aw:blaze_king] -66 -37 44
execute if score temp.teleportPos data matches 5 run tp @e[type=aw:blaze_king] -84 -37 26
scoreboard players reset temp.teleportPos data

execute as @a at @s run playsound mob.shulker.teleport @s ~~~ 1 0.5

scoreboard players random temp.teleportCountdown time 6 10
