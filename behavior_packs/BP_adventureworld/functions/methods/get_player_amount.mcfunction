# ===== 存活玩家数目检测器 ===
# 调用此方法以检测当前存活的玩家并记录在变量background.alivePlayersAmount中

scoreboard players set @e[name=alivePlayersAmount] background 0
execute @a[scores={isAlive=1..2}] ~~~ scoreboard players add @e[name=alivePlayersAmount] background 1

scoreboard players set @e[name=allPlayersAmount] background 0
execute @a ~~~ scoreboard players add @e[name=allPlayersAmount] background 1