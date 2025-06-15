# ===== 关卡游戏后时间线 =====
# 4-0 | 寒冰神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -168 18 -20 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter4/level1/start
execute positioned -168 18 -20 positioned ~-1.2~-1~-1.2 as @e[dx=1.4,dy=3,dz=1.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7唯革履可踏过三尺细雪......"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也就是说，我必须要用皮革靴子才能通过这个神殿了。"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我就说嘛，怎么就给我留了一双臭皮鞋呢。"}]}
execute if score timeline time matches 240.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
