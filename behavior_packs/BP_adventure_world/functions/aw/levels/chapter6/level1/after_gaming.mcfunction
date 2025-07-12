# ===== 关卡游戏后时间线 =====
# 6-1

# --- 检查玩家进入下一个关卡 ---
execute positioned -80 -18 -46 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter6/level2/start
execute positioned -80 -18 -46 positioned ~-1.5~-1~-1.5 as @e[dx=2,dy=3,dz=2,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你一定想象不到当我发现空间贤者的内容时有多激动！"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我也一样！毕竟我们终于有线索了！"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
