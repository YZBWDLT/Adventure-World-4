# ===== 关卡游戏时时间线 =====
# 10-3 | 进入试炼门口

# --- 剧情 ---
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7§d在左侧调整难度和调整模式，右侧选择你要进入的关卡§7。"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7万万不可逞能，§d提升一级的难度并不像你想象的那么简单§7。"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7如果还想回味某些让你印象深刻的关卡，你可以选择该关卡来单独体验。"}]}

# --- 剧情结束 ---
execute if score timeline time matches 300 run function aw/levels/end/stage3/complete
