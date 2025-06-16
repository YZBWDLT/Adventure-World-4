# ===== 关卡游戏后时间线 =====
# 6-0 | 山峦神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -76 -30 -48 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter6/level1/start
execute positioned -76 -30 -48 positioned ~-1.2~-1~-1.2 as @e[dx=1.4,dy=3,dz=1.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}
execute if score timeline time matches 80.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
