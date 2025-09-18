# ===== 关卡游戏后时间线 =====
# 3-4

# --- 检查玩家进入下一个关卡 ---
execute positioned -173 18 -8 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-174,y=17,z=-6,dx=2,dy=2] at @s run function aw/levels/chapter4/level0/start
execute positioned -173 18 -8 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}
execute if score timeline time matches 80.. run function aw/lib/modify_data/timeline/disable_time_lapse
