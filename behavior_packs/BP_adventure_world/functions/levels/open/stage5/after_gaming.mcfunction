# ===== 关卡游戏后时间线 =====
# 0-4 | 与张宇对话&到达剑之试炼入口

# --- 检查玩家进入下一个关卡 ---
execute as @e[tag=nextLevel] if entity @a[r=5] run function levels/open/stage4/start
