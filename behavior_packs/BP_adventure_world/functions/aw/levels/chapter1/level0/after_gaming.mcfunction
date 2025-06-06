# ===== 关卡游戏后时间线 =====
# 1-0 | 沙漠神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -117 2 16 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator] at @s run function levels/chapter1/level1/start

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，能听得到吗？"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7听得到，记得保持联系啊！"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/states/timeline/disable_time_lapse
