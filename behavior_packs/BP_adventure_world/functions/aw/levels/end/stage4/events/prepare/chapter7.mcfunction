# ===== 准备开启单关卡试炼 =====

# 本章环境初始化
function aw/levels/chapter7/init
event entity @e[type=aw:door] aw:close_door

# 7-1
execute if score level settings matches 19 run tp @a -119 -16 103
execute if score level settings matches 19 run spawnpoint @a -119 -16 103

# 7-2
execute if score level settings matches 20 run tp @a -161 -17 110
execute if score level settings matches 20 run spawnpoint @a -119 -16 103

# 7-3
execute if score level settings matches 21 run tp @a -194 -17 97
execute if score level settings matches 21 run spawnpoint @a -161 -17 110

# 7-4
execute if score level settings matches 22 run tp @a -225 -17 99
execute if score level settings matches 22 run spawnpoint @a -194 -17 97

# 7-5
execute if score level settings matches 23 run tp @a -225 -47 44
execute if score level settings matches 23 run spawnpoint @a -225 -17 99
