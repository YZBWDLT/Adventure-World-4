# ===== 关卡游戏时时间线 =====
# 10-3 | 进入试炼门口

# --- 剧情 ---
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7§d在左侧调整难度，右侧调整模式§7。"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7神殿比较古老了，所以按按钮反应会稍微慢一点，哈哈。"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"translate":"* §e张宇： §7万万不可逞能，§d提升一级的难度并不像你想象的那么简单§7。"}]}

# --- 剧情结束 ---
execute if score timeline time matches 300 run function aw/levels/end/stage3/complete
