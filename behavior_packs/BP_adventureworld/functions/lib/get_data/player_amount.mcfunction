# ===== 存活玩家数目检测器 ===
# 调用此方法以检测当前存活的玩家并记录在变量data.alivePlayersAmount中

execute @e[name=alivePlayersAmount,scores={active=1}] ~~~ scoreboard players set @s data 0
execute @e[name=alivePlayersAmount,scores={active=1}] ~~~ execute @a[scores={isAlive=1..3}] ~~~ scoreboard players add @e[name=alivePlayersAmount] data 1

execute @e[name=allPlayersAmount,scores={active=1}] ~~~ scoreboard players set @s data 0
execute @e[name=allPlayersAmount,scores={active=1}] ~~~ execute @a ~~~ scoreboard players add @e[name=allPlayersAmount] data 1