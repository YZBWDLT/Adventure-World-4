# ===== 准备开启单关卡试炼 =====

# 本章环境初始化
function aw/levels/chapter6/init
event entity @e[type=aw:door] aw:close_door

# 6-1
execute if score level settings matches 15 run tp @a -76 -30 -48
execute if score level settings matches 15 run spawnpoint @a -81 -30 -28

# 6-2
execute if score level settings matches 16 run tp @a -80 -18 -48
execute if score level settings matches 16 run spawnpoint @a -76 -30 -48

# 6-3
execute if score level settings matches 17 run tp @a -75 -36 -15
execute if score level settings matches 17 run spawnpoint @a -80 -18 -48

# 6-4
execute if score level settings matches 18 run tp @a -75 -38 22
execute if score level settings matches 18 run spawnpoint @a -75 -36 -15
