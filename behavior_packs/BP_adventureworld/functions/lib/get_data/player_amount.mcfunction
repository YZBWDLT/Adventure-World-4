# ===== 存活玩家数目检测器 ===
# 调用此方法以检测当前存活的玩家并记录在变量data.alivePlayersAmount中

scoreboard players set @e[name=alivePlayersAmount] data 0
execute @a[scores={isAlive=1..3}] ~~~ scoreboard players add @e[name=alivePlayersAmount] data 1

scoreboard players set @e[name=maxPlayersAmount] data 0
execute @a ~~~ scoreboard players add @e[name=maxPlayersAmount] data 1

function lib/get_data/player_is_alive
scoreboard players set @e[name=realDeadPlayersAmount] data 0
execute @a[tag=!isAlive] ~~~ scoreboard players add @e[name=realDeadPlayersAmount] data 1
