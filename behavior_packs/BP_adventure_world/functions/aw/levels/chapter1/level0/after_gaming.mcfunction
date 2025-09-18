# ===== 关卡游戏后时间线 =====
# 1-0 | 沙漠神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -117 2 16 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-118,y=1,z=14,dx=2,dy=2] at @s run function aw/levels/chapter1/level1/start

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，能听得到吗？§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7听得到，记得保持联系啊！§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
