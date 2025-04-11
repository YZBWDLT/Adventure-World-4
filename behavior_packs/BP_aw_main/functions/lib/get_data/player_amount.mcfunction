# ===== 玩家数目检测器 =====
# 返回符合条件的玩家数目。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · data.playerAmount=(玩家总人数)
# · data.alivePlayerAmount=(存活的玩家总人数)

# --- 返回玩家总人数 ---
scoreboard players set playerAmount data 0
execute as @a run scoreboard players add playerAmount data 1

# --- 返回存活的玩家总人数 ---
scoreboard players set alivePlayerAmount data 0
## 如果在游戏中，返回非旁观者的玩家人数
execute if score levelCompleted data matches 0 as @a[tag=!spectator] run scoreboard players add alivePlayerAmount data 1
## 如果不在游戏中，返回所有玩家人数
execute unless score levelCompleted data matches 0 run scoreboard players operation alivePlayerAmount data = playerAmount data
