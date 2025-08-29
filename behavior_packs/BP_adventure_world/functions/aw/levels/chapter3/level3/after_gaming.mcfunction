# ===== 关卡游戏后时间线 =====
# 3-3

# --- 检查玩家进入下一个关卡 ---
execute positioned -170 -14 23 positioned ~-0.91~-1~-0.91 as @a[dx=0.82,dy=3,dz=0.82,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter3/level4/start
execute positioned -170 -14 23 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7那些拿着三叉戟的溺尸真是烦人，扎起人来一点都不手软。§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7千万要注意安全啊林乐！§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
