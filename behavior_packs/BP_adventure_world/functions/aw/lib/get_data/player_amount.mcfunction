# ===== 玩家数目检测器 =====
# 返回总玩家数目（data.playerAmount）和存活的玩家数目（data.alivePlayerAmount）。
# 调用此方法时：无需修饰。

# --- 返回玩家总人数 ---
scoreboard players set playerAmount data 0
execute as @a run scoreboard players add playerAmount data 1

# --- 返回存活的玩家总人数 ---
scoreboard players set alivePlayerAmount data 0
## 如果在游戏中，返回非旁观者的玩家人数
execute if score levelCompleted data matches 0 as @a[scores={spectator=0}] run scoreboard players add alivePlayerAmount data 1
## 如果不在游戏中，返回所有玩家人数
execute unless score levelCompleted data matches 0 run scoreboard players operation alivePlayerAmount data = playerAmount data
