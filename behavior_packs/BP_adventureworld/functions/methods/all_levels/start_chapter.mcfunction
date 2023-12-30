# ===== 章节开始函数 =====
# 该函数用于章节函数启动之时。
# 函数逻辑：在X-0的启动函数中先行执行

# --- 设定玩家的isAlive.@s为2 ---
# 因为【关卡开始控制器】在调用此函数时会将进入的玩家的isAlive.@s设定为1，但进入章节关卡区域并不代表是“游戏区域”，因此重新改回2
scoreboard players set @a isAlive 2

# --- 初始化标题时间和音效 ---
title @a times 0 100 0
scoreboard players set @e[name=soundPlayer] active 14

# --- 为玩家补充必要物资 ---
function methods/supplier/arrow
function methods/supplier/items
function methods/supplier/potion