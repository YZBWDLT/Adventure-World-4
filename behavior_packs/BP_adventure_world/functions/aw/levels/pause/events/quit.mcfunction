# ===== 玩家退出执行的命令 =====

# 回到 10-3
scoreboard players set chapter data 10
function aw/levels/end/stage3/start
function aw/levels/end/stage3/complete

# 调整玩家为冒险模式
execute if score developerMode settings matches 0 run gamemode adventure @a
scoreboard players set @a spectator 0

# 移除迷雾
fog @a remove gameFog

# 移除物品
scoreboard players set allowAcousticStoneCrystal data 0
clear @a

# 移除药效
effect @a resistance 0 10 true

# 提示玩家
tellraw @a {"rawtext":[{"translate":"§c已退出试炼！"}]}

# 清除门和引导点
execute as @e[type=aw:door] at @s run function aw/lib/events/remove_door
event entity @e[type=aw:destination] aw:remove_immediately
