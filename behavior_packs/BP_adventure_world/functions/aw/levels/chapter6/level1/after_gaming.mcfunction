# ===== 关卡游戏后时间线 =====
# 6-1

# --- 检查玩家进入下一个关卡 ---
execute positioned -80 -18 -48 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-81,y=-19,z=-50,dx=2,dy=2] at @s run function aw/levels/chapter6/level2/start
execute positioned -80 -18 -48 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你一定想象不到当我发现空间贤者的内容时有多激动！§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我也一样！毕竟我们终于有线索了！§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
