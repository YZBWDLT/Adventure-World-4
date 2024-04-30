# ===== 防作弊 =====

# --- 当检测到玩家作弊后，添加标签 ---
tag @a[m=creative,tag=!cheated] add cheated

# --- 检测是否为网易客户端 ---
## 因在using_client的获取数据方法中，使用的是假名，因此将数值同步
execute @e[name=tick,scores={time=12}] ~~~ scoreboard players operation @e[name=isNetease] data = isNetease data
