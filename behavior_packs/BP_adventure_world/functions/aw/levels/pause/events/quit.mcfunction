# ===== 玩家退出执行的命令 =====

# 回到 10-3
scoreboard players set chapter data 10
function aw/levels/end/stage3/start
function aw/levels/end/stage3/complete

# 移除迷雾
fog @a remove gameFog

# 移除物品
scoreboard players set allowAcousticStoneCrystal data 0
clear @a

# 移除药效
effect @a resistance 0 10 true

# 提示玩家
tellraw @a {"rawtext":[{"translate":"§c已退出试炼！"}]}
