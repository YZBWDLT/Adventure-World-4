# ===== 关卡游戏后时间线 =====
# 2-3

# --- 检查玩家进入下一个关卡 ---
execute positioned -173 -20 30 positioned ~-0.95~-1~-0.95 as @a[dx=0.9,dy=3,dz=0.9,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter3/level0/start
execute positioned -173 -20 30 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}
execute if score timeline time matches 80.. run function aw/lib/modify_data/timeline/disable_time_lapse
