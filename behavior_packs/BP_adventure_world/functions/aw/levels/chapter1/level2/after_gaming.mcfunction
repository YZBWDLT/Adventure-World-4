# ===== 关卡游戏后时间线 =====
# 1-2

# --- 检查玩家进入下一个关卡 ---
execute positioned -137 12 33 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] run function aw/levels/chapter1/level3/start
execute positioned -137 12 33 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我拿到你说的那个御风珠了！§8(1/4)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯！可惜铭文上没有记载它的具体用法，恐怕需要你研究研究......§8(2/4)"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7没事，这就是我之前冒险用过的，我对它可太熟悉了。§8(3/4)"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7啊，太好了！§8(4/4)"}]}
execute if score timeline time matches 320.. run function aw/lib/modify_data/timeline/disable_time_lapse
