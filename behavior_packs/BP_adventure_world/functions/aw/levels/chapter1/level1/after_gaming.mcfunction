# ===== 关卡游戏后时间线 =====
# 1-1

# --- 检查玩家进入下一个关卡 ---
execute positioned -126 6 52 positioned ~-2.4~-1~-2.4 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-127,y=5,z=50,dx=2,dy=2] at @s run function aw/levels/chapter1/level2/start

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7切~就两个僵尸而已，十分轻松嘛。§8(1/2)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7试炼嘛，肯定要循序渐进的。不要掉以轻心，接下来§d骷髅§7就要出现啦。§8(2/2)"}]}
execute if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
