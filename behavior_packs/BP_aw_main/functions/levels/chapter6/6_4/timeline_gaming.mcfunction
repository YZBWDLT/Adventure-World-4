# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

#<!> --- 适配旧版的命令 ---
scoreboard players operation tick time = @e[name=tick] time
scoreboard players operation monsterAmount data = @e[name=monsterAmount] data

# --- 岩浆涨落 ---
# 每秒执行 1 次。

execute if score tick time matches 5 run function levels/chapter6/6_4/events/lava_rise

# --- 生命恢复 ---
# 每秒执行 1 次。仅限 Boss 3 阶段时执行。

execute if score tick time matches 10 if score @e[type=aw:blaze_king,c=1] bossStage matches 3 run function levels/chapter6/6_4/events/boss_regeneration

# --- 召唤怪物 ---
# 每秒执行 1 次。仅限 Boss 2~3 阶段时执行。

execute if score tick time matches 15 if score @e[type=aw:blaze_king,c=1] bossStage matches 2..3 run function levels/chapter6/6_4/events/summon_monsters

# --- 随机传送 ---
# 每秒执行 1 次。

execute if score tick time matches 1 run function levels/chapter6/6_4/events/teleport_randomly

# --- 胜利判定 ---
# 当Boss被击杀后，立即结束

execute unless entity @e[type=aw:blaze_king] run kill @e[family=monster]
