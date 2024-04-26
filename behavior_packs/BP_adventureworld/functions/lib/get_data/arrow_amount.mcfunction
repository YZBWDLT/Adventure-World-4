# ===== 箭数目检测器 ===
# 调用此方法以检测当前存活的玩家并记录在变量data.arrowAmount中

scoreboard players set @e[name=arrowAmount] data 0
execute @e[type=arrow] ~~~ scoreboard players add @e[name=arrowAmount] data 1
