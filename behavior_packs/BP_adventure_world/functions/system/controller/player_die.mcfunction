# ===== 死亡机制 =====
# 判定死亡玩家并执行命令。
# 当玩家重生后，将出生到本关标记的位置上。
# 玩家的死亡可以分为在游戏时死亡和不在游戏时死亡，其中游戏时死亡则令玩家处于观战状态。

# --- 将玩家的重生点设置在本关标记上 ---
execute as @e[has_property={aw:marker_type="level",aw:level="this"}] at @s run spawnpoint @a ~~~

# --- 运行死亡榜 ---
scoreboard players set @a[scores={deathState=!2}] deathState 1
scoreboard players set @e[type=player] deathState 0
scoreboard players add @a[scores={deathState=1}] deathCount 1
scoreboard players set @a[scores={deathState=1}] deathState 2
scoreboard players set @a[scores={deathState=0}] deathTime 0
scoreboard players add @a[scores={deathState=1..2}] deathTime 1

# --- 当玩家死亡后的情况讨论…… ---

## 如果为游戏时死亡，则……

### 如果玩家数大于等于两人，播报消息、设置为旁观模式并提醒玩家在下一波复活
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. as @a[scores={death=2},tag=!spectator] run function lib/modify_data/death_message
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. as @a[scores={death=2},tag=!spectator] run tellraw @s {"rawtext":[{"translate":"§7您在刚刚的试炼中倒下了！但不要着急，您在下一波就会被解救出来。"}]}
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. as @a[scores={death=2},tag=!spectator] run gamemode spectator @s
### 标记死亡的玩家为旁观玩家，并设置为旁观模式
execute if score levelCompleted data matches 0 run tag @a[scores={deathState=2}] add spectator
gamemode spectator @a[tag=spectator]

## 如果为非游戏时死亡，则 pass

# --- 其他 ---

## 为旁观者施加增益buff
execute if score levelCompleted data matches 0 if score tick time matches 1 run effect @a[tag=spectator] fire_resistance 1 0 true
execute if score levelCompleted data matches 0 if score tick time matches 1 run effect @a[tag=spectator] resistance 1 9 true
