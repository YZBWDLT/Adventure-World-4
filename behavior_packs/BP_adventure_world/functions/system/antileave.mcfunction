# ===== 反退出重进系统 =====
# 本系统仅对退出重进的玩家有效。

# --- 获取退出重进的玩家 ---
scoreboard players add @a isOnline 0

# --- 令退出重进玩家执行的命令 ---
execute as @a[scores={isOnline=0}] at @s run function lib/modify_data/rejoined_player

# --- 将所有玩家设置为在线模式 ---
scoreboard objectives remove isOnline
scoreboard objectives add isOnline dummy "在线数据"
scoreboard players set @a isOnline 1
