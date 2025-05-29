# ===== 关卡游戏后时间线 =====
# 0-3 | 到达时间神殿

# --- 检查玩家进入下一个关卡 ---
execute as @e[has_property={aw:level="next"}] at @s if entity @a[r=2] run function levels/open/stage4/start
