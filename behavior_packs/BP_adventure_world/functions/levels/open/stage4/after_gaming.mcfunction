# ===== 关卡游戏后时间线 =====
# 0-4 | 与张宇对话&到达剑之试炼入口

# --- 检查玩家进入下一个关卡 ---
execute as @e[has_property={aw:level="next"}] if entity @a[dx=5,dy=1,dz=3] run function levels/open/stage5/start

# --- 玩家入水后，触发彩蛋 ---

## 检测并触发
execute as @a if block ~~~ water if score timeline time matches 0 run function levels/open/stage4/events/player_in_water

## 剧情
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §b田英： §7喂喂！你在干什么！试炼入口不在水里啊！"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7水下没有刻字。不过谢谢你，研究刻字的事全盘交给我就好啦。"}]}

## 剧情结束后 | 这里保留值，防止上面的检测time.timeline=0被重复触发
execute if score timeline time matches 81 run function lib/modify_data/states/timeline/disable_time_lapse
