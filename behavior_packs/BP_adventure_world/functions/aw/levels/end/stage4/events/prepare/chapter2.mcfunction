# ===== 准备开启单关卡试炼 =====

# 本章环境初始化
function aw/levels/chapter2/init
event entity @e[type=aw:door] aw:close_door

# 2-1
execute if score level settings matches 4 run tp @a -75 19 60
execute if score level settings matches 4 run spawnpoint @a -79 19 26

# 2-2
execute if score level settings matches 5 run tp @a -72 1 69
execute if score level settings matches 5 run spawnpoint @a -75 19 60

# 2-3
execute if score level settings matches 6 run tp @a -143 -20 61
execute if score level settings matches 6 run spawnpoint @a -72 1 69
