# ===== 关卡游戏后时间线 =====
# 7-2

# --- 检查玩家进入下一个关卡 ---
execute positioned -194 -17 97 positioned ~-0.91~-1~-0.91 as @a[dx=0.82,dy=3,dz=0.82,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter7/level3/start
execute positioned -194 -17 97 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §7§kabcdefghijklmnopqrstuvwxyz"}]}
execute if score timeline time matches 80.. run function aw/lib/modify_data/timeline/disable_time_lapse
