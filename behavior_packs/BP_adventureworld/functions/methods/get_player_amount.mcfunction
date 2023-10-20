# ===== 存活玩家数目检测器 ===
# 调用此方法以检测当前存活的玩家并记录在变量background.alivePlayersAmount中

scoreboard players set @e[name=alivePlayersAmount] background 0
execute @e[scores={isAlive=1..2}] ~~~ scoreboard players add @e[name=alivePlayersAmount] background 1