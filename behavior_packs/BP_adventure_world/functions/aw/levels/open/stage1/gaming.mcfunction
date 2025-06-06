# ===== 关卡游戏时时间线 =====
# 0-1 | 醒来

# --- 剧情 ---
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §b田英： §7林乐！起床啦！别老是睡懒觉啊可恶ヽ(｀⌒´)ノ！"}]}

# --- 剧情结束 ---
execute if score timeline time matches 120 run function aw/levels/open/stage1/complete
