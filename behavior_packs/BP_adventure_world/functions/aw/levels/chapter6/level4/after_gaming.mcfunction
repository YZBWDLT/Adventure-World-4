# ===== 关卡游戏后时间线 =====
# 6-4

# --- 检查玩家进入下一个关卡 ---
# （自动跳转到下一关，不进行检查）

# --- 剧情 ---
execute if score timeline time matches 100 if score storyMode settings matches 0 run tellraw @a {"rawtext":[{"text":"* 你突然感觉轻飘飘的，眼前开始模糊......"}]}
execute if score timeline time matches 100 if score storyMode settings matches 1 run tellraw @a {"rawtext":[{"text":"* 此时，我突然感觉轻飘飘的，眼前也开始模糊......"}]}
execute if score timeline time matches 100 run effect @a blindness 30 0 true
execute if score timeline time matches 220.. run function aw/levels/chapter7/level0/start
