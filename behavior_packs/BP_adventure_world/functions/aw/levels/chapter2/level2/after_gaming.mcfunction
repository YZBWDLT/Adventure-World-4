# ===== 关卡游戏后时间线 =====
# 2-2

# --- 检查玩家进入下一个关卡 ---
execute positioned -143 -20 61 positioned ~-0.95~-1~-0.95 as @a[dx=0.9,dy=3,dz=0.9,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter2/level3/start
execute positioned -143 -20 61 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，接下来就是丛林神殿的守关怪物了吧。§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7已经到§d这个神殿的最后一关了§7？铭文写着【§d守关者为骷髅之王§7】，你千万要小心啊！§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
