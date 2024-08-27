# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

#<!> --- 适配旧版的命令 ---
scoreboard players operation tick time = @e[name=tick] time

# --- 岩浆涨落 ---
# 每秒执行 1 次。

execute if score tick time matches 5 run function levels/chapter6/6_4/events/lava_rise


# --- 胜利判定 ---
# 当Boss被击杀后，立即结束

execute unless entity @e[type=aw:blaze_king] run kill @e[family=monster]
