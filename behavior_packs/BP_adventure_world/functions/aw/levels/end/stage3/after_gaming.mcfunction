# ===== 关卡游戏后时间线 =====
# 10-3 | 进入试炼门口

# --- 检查玩家进入下一个关卡 ---
execute positioned -18 -3 99 if entity @a[dx=5,dy=0.3,dz=3] run function aw/levels/end/stage3/events/player_in_temple

# --- 和张宇对话 ---
    ## 剧情
        execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7你要回去吗？"}]}
    ## 进入对话状态
        execute if score timeline time matches 1 run function aw/lib/modify_data/start_dialogue_keep
    ## 失明并黑屏
        execute if score timeline time matches 10 run effect @a blindness 4 0 true
        execute if score timeline time matches 50 run camera @a fade time 1 3 1
    ## 剧情结束
        execute if score timeline time matches 100 run function aw/levels/end/stage3/events/back_to_stage2
# --- 神殿前 ---
    ## 若玩家按下了更改难度按钮，则触发事件
        execute if block -13 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=true] run function aw/levels/end/stage3/events/button_push/change_difficulty
    ## 若玩家按下了更改模式按钮，则触发事件
        execute if block -18 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=true] run function aw/levels/end/stage3/events/button_push/change_mode
