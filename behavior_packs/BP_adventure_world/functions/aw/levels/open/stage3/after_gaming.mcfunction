# ===== 关卡游戏后时间线 =====
# 0-3 | 到达时间神殿

# --- 剧情 ---

## 当玩家 2 分钟后还没有找到下一个记录点，提示玩家
execute if score timeline time matches 2400 run summon aw:text_display "§b提示：从这里进去开启下一段对话" -21.0 3.5 34
execute if score timeline time matches 2400 run tellraw @a {"rawtext":[{"translate":"§b看来你卡在这里已经很久了！已为你标出张宇商店的位置，去看看吧？"}]}

## 最后终止时间流逝
execute if score timeline time matches 2400 run function aw/lib/modify_data/states/timeline/disable_time_lapse

# --- 检查玩家进入下一个关卡 ---
execute positioned -21 3 39 if entity @a[r=2] run function aw/levels/open/stage4/start
