# ===== 关卡游戏后时间线 =====
# 0-1 | 醒来

# --- 检查玩家进入下一个关卡 ---

## 当玩家接近田英（nextLevel）后进入下一关
execute as @e[tag=nextLevel] if entity @a[r=5] run function levels/open/stage2/start
