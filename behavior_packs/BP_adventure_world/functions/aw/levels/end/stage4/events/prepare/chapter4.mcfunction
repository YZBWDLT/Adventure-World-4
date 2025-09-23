# ===== 准备开启单关卡试炼 =====

# 本章环境初始化
function aw/levels/chapter4/init
event entity @e[type=aw:door] aw:close_door

# 4-1
execute if score level settings matches 11 run tp @a -168 18 -20
execute if score level settings matches 11 run spawnpoint @a -173 18 -8

# 4-2
execute if score level settings matches 12 run tp @a -156 8 -1
execute if score level settings matches 12 run spawnpoint @a -168 18 -20

# 4-3
execute if score level settings matches 13 run tp @a -156 -11 14
execute if score level settings matches 13 run spawnpoint @a -156 8 -1

# 4-4
execute if score level settings matches 14 run tp @a -141 -30 6
execute if score level settings matches 14 run spawnpoint @a -156 -11 14
