# ===== 关卡游戏后时间线 =====
# 10-3 | 进入试炼门口

# --- 检查玩家进入下一个关卡 ---
execute if score timeline active matches 1 positioned -18 -3 99 if entity @a[dx=5,dy=0.3,dz=3] run function aw/levels/end/stage3/events/player_in_temple

# --- 和张宇对话后的时间线 ---
execute if score timeline active matches 1 run function aw/levels/end/stage3/timelines/zhangyu_dialogue

# --- 选择单关卡后的时间线 ---
execute if score timeline active matches 2 run function aw/levels/end/stage3/timelines/single_level

# --- 神殿前 ---
## 若玩家按下了更改难度按钮，则触发事件
    execute if block -12 2 85 polished_blackstone_button ["facing_direction"=4,"button_pressed_bit"=true] if score mapCompletedTimes record matches 1.. run function aw/levels/end/stage3/events/button_push/change_difficulty
## 若玩家按下了更改模式按钮，则触发事件
    execute if block -13 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=true] run function aw/levels/end/stage3/events/button_push/change_mode
## 若玩家按下了上一关按钮，则触发事件
    execute if block -18 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=true] if score mapCompletedTimes record matches 1.. run function aw/levels/end/stage3/events/button_push/prev_level
## 若玩家按下了下一关按钮，则触发事件
    execute if block -19 2 85 polished_blackstone_button ["facing_direction"=5,"button_pressed_bit"=true] if score mapCompletedTimes record matches 1.. run function aw/levels/end/stage3/events/button_push/next_level
