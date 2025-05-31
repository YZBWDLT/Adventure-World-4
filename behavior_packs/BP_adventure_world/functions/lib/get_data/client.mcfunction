# ===== 获取玩家使用的游戏版本 =====
# 用于检测玩家使用的版本为国际版/网易版，并输出到data.client上（0：国际版，1：中国版）。
# 调用此方法时：无需修饰。

scoreboard players set client data 1
scoreboard players set sb data 0
execute if score sb data matches 0 run scoreboard players set client data 0
scoreboard players reset sb data
