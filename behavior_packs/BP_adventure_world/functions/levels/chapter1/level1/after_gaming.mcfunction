# ===== 关卡游戏后时间线 =====

# --- 检查玩家进入下一个关卡 ---
execute as @e[has_property={aw:marker_type="level",aw:level="next"}] at @s positioned ~-1.2~-1~-1.2 as @a[dx=2.4,dy=3,dz=2.4,tag=!spectator] run function levels/chapter1/level2/start

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7切~就两个僵尸而已，十分轻松嘛。"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7试炼嘛，肯定要循序渐进的。不要掉以轻心，接下来骷髅就要出现啦。"}]}
execute if score timeline time matches 160.. run function lib/modify_data/states/timeline/disable_time_lapse
