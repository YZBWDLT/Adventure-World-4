# ===== 关卡游戏后时间线 =====
# 6-3

# --- 检查玩家进入下一个关卡 ---
execute positioned -75 -38 22 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter6/level4/start
execute positioned -75 -38 22 positioned ~-1.2~-1~-1.2 as @e[dx=1.4,dy=3,dz=1.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，这里竟然出现了岩浆！这场景，看起来危机四伏啊。"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【烈焰王镇守此地，熔岩之海将焚毁万物】，看样子，你一会儿就要面对山峦神殿的守关怪物了......小心！接下来的战场岩浆可能会上升啊！"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7没事，我看到了中间一块较高的平台，那里应该是安全的。"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯，不过你可别热晕过去啦。"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哈哈，知道知道。"}]}
execute if score timeline time matches 400.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
