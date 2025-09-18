# ===== 关卡游戏后时间线 =====
# 4-2

# --- 检查玩家进入下一个关卡 ---
execute positioned -156 -11 14 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-157,y=-12,z=16,dx=2,dy=2] at @s run function aw/levels/chapter4/level3/start
execute positioned -156 -11 14 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7对了云儿，有没有关于这把剑封印恶魔的记录？§8(1/3)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7......并没有。§8(2/3)"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这......真浪费，这么好的武器居然没人用。§8(3/3)"}]}
execute if score timeline time matches 240.. run function aw/lib/modify_data/timeline/disable_time_lapse
