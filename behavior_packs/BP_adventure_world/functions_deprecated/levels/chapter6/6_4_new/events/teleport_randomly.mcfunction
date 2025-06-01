# ===== 随机传送 =====
# 此函数由「烈焰王」的实体文件执行，每秒执行 1 次。

# --- 倒计时 ---
scoreboard players remove blazeKing.randomTeleport time 1

# --- 随机传送 ---
execute if score blazeKing.randomTeleport time matches ..0 run function levels/chapter6/6_4/events/teleport_randomly_2
