# ===== 死亡机制 =====
# 判定死亡玩家并执行命令。
# 当玩家重生后，将出生到本关标记的位置上。
# 玩家的死亡可以分为在游戏时死亡和不在游戏时死亡，其中游戏时死亡则令玩家处于观战状态。

# --- 玩家重生点设置 ---

## 当在游戏状态下时，将重生点设置在上关标记上
### 备注：这么做是为了防止玩家在游戏状态下死亡后，立即重生后立刻返回到原来的重生点
### （也就是原this的位置，此时更改this的位置已于事无补），导致误开关卡
### 至于生成到上一关的其他旁观玩家，由每关的旁观机制把他们拉回来
### 这么做可能不是最好的做法，但这个重生点机制实在太让人头疼了……
execute if score levelCompleted data matches 0 positioned as @e[has_property={aw:marker_type="level",aw:level="prev"}] run spawnpoint @a ~~~
## 其他状态下，将重生点设置在本关标记上
execute unless score levelCompleted data matches 0 positioned as @e[has_property={aw:marker_type="level",aw:level="this"}] run spawnpoint @a ~~~

# --- 运行死亡榜 ---
scoreboard players set @a[scores={deathState=!2}] deathState 1
scoreboard players set @e[type=player] deathState 0
scoreboard players add @a[scores={deathState=1}] deathCount 1
scoreboard players set @a[scores={deathState=1}] deathState 2
scoreboard players set @a[scores={deathState=0}] deathTime 0
scoreboard players add @a[scores={deathState=1..2}] deathTime 1

# --- 当玩家死亡后的情况讨论…… ---

## 如果为游戏时死亡，则……

### 如果玩家数大于等于两人，播报消息并提醒玩家在下一波复活
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. as @a[scores={death=2},tag=!spectator] run function lib/modify_data/death_message
### 标记死亡的玩家为旁观玩家，并设置为旁观模式
execute if score levelCompleted data matches 0 run tag @a[scores={deathState=2}] add spectator
gamemode spectator @a[tag=spectator,m=!spectator]

## 如果为非游戏时死亡，则 pass

# --- 其他 ---

## 为旁观者施加增益buff
execute if score levelCompleted data matches 0 if score tick time matches 1 run effect @a[tag=spectator] fire_resistance 1 0 true
execute if score levelCompleted data matches 0 if score tick time matches 1 run effect @a[tag=spectator] resistance 1 9 true
