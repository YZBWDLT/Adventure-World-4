# ===== 关卡游戏后时间线 =====
# 0-1 | 醒来

# --- 检查玩家进入下一个关卡 ---
execute positioned -26 1 -37 if entity @a[r=2] run function levels/open/stage2/start
