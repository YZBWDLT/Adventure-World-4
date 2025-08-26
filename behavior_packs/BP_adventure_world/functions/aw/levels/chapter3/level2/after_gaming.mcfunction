# ===== 关卡游戏后时间线 =====
# 3-2

# --- 检查玩家进入下一个关卡 ---
execute positioned -163 -20 28 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter3/level3/start
execute positioned -163 -20 28 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7守卫者好对付吗？§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7小菜一碟！只要跑到它面前，它就不敢发射激光了。§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
