# ===== 关卡游戏后时间线 =====
# 4-0 | 寒冰神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -168 18 -20 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[scores={deathState=0,spectator=!1}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-170,y=17,z=-21,dz=2,dy=2] at @s run function aw/levels/chapter4/level1/start
execute positioned -168 18 -20 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7唯革履可踏过三尺细雪......§8(1/3)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也就是说，我§d必须要用皮革靴子§7才能通过这个神殿了。§8(2/3)"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我就说嘛，怎么就给我留了一双臭皮鞋呢。§8(3/3)"}]}
execute if score timeline time matches 240.. run function aw/lib/modify_data/timeline/disable_time_lapse
