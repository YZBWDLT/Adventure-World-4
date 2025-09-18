# ===== 关卡游戏后时间线 =====
# 6-3

# --- 检查玩家进入下一个关卡 ---
execute positioned -75 -38 22 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-76,y=-39,z=20,dx=2,dy=2] at @s run function aw/levels/chapter6/level4/start
execute positioned -75 -38 22 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，这里竟然出现了岩浆！这场景，看起来危机四伏啊。§8(1/5)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【§d烈焰之魂镇守此地，熔岩之海将焚毁万物§7】，看样子，你一会儿就要面对山峦神殿的守关怪物了......小心！接下来的战场§d岩浆可能会上升§7啊！§8(2/5)"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7没事，我看到了§d中间一块较高的平台，那里应该是安全§7的。§8(3/5)"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯，不过你可别热晕过去啦。§8(4/5)"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哈哈，知道知道。§8(5/5)"}]}
execute if score timeline time matches 400.. run function aw/lib/modify_data/timeline/disable_time_lapse
