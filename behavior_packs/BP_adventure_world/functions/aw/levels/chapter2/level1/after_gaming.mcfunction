# ===== 关卡游戏后时间线 =====
# 2-1

# --- 检查玩家进入下一个关卡 ---
execute positioned -72 1 69 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator] at @s run function levels/chapter2/level2/start
execute positioned -72 1 69 positioned ~-1.2~-1~-1.2 as @e[dx=1.4,dy=3,dz=1.4,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我怎么总感觉等会会有点危险啊。"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......铭文这里有一段描述，【梯由机关所控，追求尽善者终将一无所得】......我看不太明白，也许之后会有一些机关......？"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7【追求尽善者终将一无所得】......？行，我先记着这句话。"}]}
execute if score timeline time matches 240.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
