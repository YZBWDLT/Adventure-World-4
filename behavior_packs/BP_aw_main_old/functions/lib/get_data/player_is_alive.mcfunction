# ===== 玩家存活检测 =====
# 当玩家存活时（游戏意义上），玩家会拥有一个isAlive标签

tag @a remove isAlive
tag @e[type=player] add isAlive
