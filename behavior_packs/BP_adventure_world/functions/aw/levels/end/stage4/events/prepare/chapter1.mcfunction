# ===== 准备开启单关卡试炼 =====

# 本章环境初始化
function aw/levels/chapter1/init
event entity @e[type=aw:door] aw:close_door

# 1-1
execute if score level settings matches 1 run tp @a -117 2 16
execute if score level settings matches 1 run spawnpoint @a -117 1 -6

# 1-2
execute if score level settings matches 2 run tp @a -126 6 52
execute if score level settings matches 2 run spawnpoint @a -117 2 16

# 1-3
execute if score level settings matches 3 run tp @a -137 12 33
execute if score level settings matches 3 run spawnpoint @a -126 6 52
