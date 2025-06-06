# ===== 关卡游戏后时间线 =====
# 2-2

# --- 检查玩家进入下一个关卡 ---
execute positioned -143 -20 61 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator] at @s run function levels/chapter2/level3/start
execute positioned -143 -20 61 positioned ~-1.2~-1~-1.2 as @e[dx=1.4,dy=3,dz=1.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，接下来就是丛林神殿的守关怪物了吧。"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7已经到这个神殿的最后一关了？铭文写着【守关者为骷髅之王】，你千万要小心啊！"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
