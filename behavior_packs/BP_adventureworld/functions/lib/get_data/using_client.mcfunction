# ===== 获取玩家使用的游戏版本 =====

scoreboard players set @e[name=isNetease] data 1
tag @a add cao
execute @a[tag=cao] ~~~ scoreboard players set @e[name=isNetease] data 0
tag @a remove cao