# ===== 关卡游戏后时间线 =====

# --- 检查玩家进入下一个关卡 ---
execute as @e[has_property={aw:marker_type="level",aw:level="next"}] at @s positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator] run function levels/chapter2/level0/start
execute as @e[has_property={aw:marker_type="level",aw:level="next"}] at @s positioned ~-1.2~-1~-1.2 as @e[dx=1.4,dy=3,dz=1.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}
execute if score timeline time matches 80.. run function lib/modify_data/states/timeline/disable_time_lapse
