# ===== 关卡游戏后时间线 =====
# 2-0 | 丛林神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -75 19 60 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[scores={deathState=0,spectator=!1}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-76,y=18,z=58,dx=2,dy=2] at @s run function aw/levels/chapter2/level1/start
execute positioned -75 19 60 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7当心蜘蛛和苦力怕啊！§8(1/1)"}]}
execute if score timeline time matches 80.. run function aw/lib/modify_data/timeline/disable_time_lapse
