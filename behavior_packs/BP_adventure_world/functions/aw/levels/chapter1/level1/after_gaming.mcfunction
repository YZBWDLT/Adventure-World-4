# ===== 关卡游戏后时间线 =====
# 1-1

# --- 检查玩家进入下一个关卡 ---
execute positioned -126 5 52 positioned ~-0.95~-1~-0.95 as @a[dx=0.9,dy=3,dz=0.9,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter1/level2/start

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7切~就两个僵尸而已，十分轻松嘛。§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7试炼嘛，肯定要循序渐进的。不要掉以轻心，接下来§d骷髅§7就要出现啦。§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
