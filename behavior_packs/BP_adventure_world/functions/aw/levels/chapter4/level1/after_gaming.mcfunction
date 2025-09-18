# ===== 关卡游戏后时间线 =====
# 4-1

# --- 检查玩家进入下一个关卡 ---
execute positioned -156 8 -1 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-157,y=7,z=-3,dx=2,dy=2] at @s run function aw/levels/chapter4/level2/start
execute positioned -156 8 -1 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这里的雪会塌陷，果然需要皮靴。§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯。还要小心远程攻击的敌人啊！§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
