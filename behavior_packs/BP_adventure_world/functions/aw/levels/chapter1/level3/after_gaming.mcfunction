# ===== 关卡游戏后时间线 =====
# 1-3

# --- 检查玩家进入下一个关卡 ---
execute positioned -79 19 26 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter2/level0/start
execute positioned -79 19 26 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}
execute if score timeline time matches 80.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
