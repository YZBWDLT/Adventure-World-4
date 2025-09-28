# ===== 准备开启单关卡试炼 =====

# 本章环境初始化
function aw/levels/chapter3/init
event entity @e[type=aw:door] aw:close_door

# 3-1
execute if score level settings matches 7 run tp @a -188 -20 29
execute if score level settings matches 7 run spawnpoint @a -173 -20 30

# 3-2
execute if score level settings matches 8 run tp @a -172 -20 11
execute if score level settings matches 8 run spawnpoint @a -188 -20 29

# 3-3
execute if score level settings matches 9 run tp @a -163 -20 28
execute if score level settings matches 9 run spawnpoint @a -172 -20 11

# 3-4
execute if score level settings matches 10 run tp @a -170 -14 23
execute if score level settings matches 10 run spawnpoint @a -163 -20 28
