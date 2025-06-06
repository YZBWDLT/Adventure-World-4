# ===== 关卡游戏后时间线 =====
# 2-0 | (章节名)神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -75 19 60 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator] at @s run function levels/chapter2/level1/start
execute positioned -75 19 60 positioned ~-1.2~-1~-1.2 as @e[dx=1.4,dy=3,dz=1.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7当心蜘蛛和苦力怕啊！"}]}
execute if score timeline time matches 80.. run function lib/modify_data/states/timeline/disable_time_lapse
