# ===== 关卡游戏后时间线 =====

# --- 检查玩家进入下一个关卡 ---
execute as @e[has_property={aw:marker_type="level",aw:level="next"}] at @s positioned ~-1.2~-1~-1.2 as @a[dx=2.4,dy=3,dz=2.4,tag=!spectator] at @s run function levels/chapter2/level1/start
execute as @e[has_property={aw:marker_type="level",aw:level="next"}] at @s positioned ~-1.2~-1~-1.2 as @e[dx=2.4,dy=3,dz=2.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7当心蜘蛛和苦力怕啊！"}]}
execute if score timeline time matches 80.. run function lib/modify_data/states/timeline/disable_time_lapse
