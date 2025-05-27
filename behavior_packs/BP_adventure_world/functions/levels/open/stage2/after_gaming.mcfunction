# ===== 关卡游戏后时间线 =====
# 0-2 | 与田英初次对话

# --- 剧情 ---

## 当玩家 10 秒后还在田英4~10格范围内，说下面这句
execute if score timeline time matches 200 at @e[name="田英"] run tellraw @a[r=6] {"rawtext":[{"text":"* §b田英： §7§o（小声）一提起她你就感兴趣，我就知道。"}]}

## 当玩家 3 分钟后还没有找到下一个记录点，提示玩家
execute if score timeline time matches 3600 run summon aw:text_display "提示：从这里进去开启下一段对话" 9 2 26
execute if score timeline time matches 3600 run tellraw @a {"rawtext":[{"translate":"§b看来你卡在这里已经很久了！其实农田对面的树林里是有通路的，去看看吧？"}]}

## 最后终止时间流逝
execute if score timeline time matches 3600 run function lib/modify_data/states/timeline/disable_time_lapse

# --- 检查玩家进入下一个关卡 ---
execute as @e[has_property={aw:level=next}] if entity @a[r=3] run function levels/open/stage3/start
