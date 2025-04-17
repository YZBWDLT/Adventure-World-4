# ===== 关卡游戏时时间线 =====
# 0-2 | 与田英初次对话

# --- 剧情 ---
# 仅当关卡未完成时播放
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §b田英： §7林乐！起床啦！别老是睡懒觉啊可恶ヽ(｀⌒´)ノ！"}]}
execute if score timeline time matches 61 run function levels/open/stage1/complete
