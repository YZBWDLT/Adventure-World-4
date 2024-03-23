# ===== 时间线 =====

# --- 锁定玩家视角 阶段2 ---
# 位置从(-71 -29 -20)->(-82 -31 -31)，1100刻内玩家位置~-11~-2~，每刻~-0.01~-0.001~-0.01
# 视角每刻~0.01~0.001~0.01
execute @e[name=timeline,scores={time=0..1100}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~-0.01~-0.001~-0.01
execute @e[name=timeline,scores={time=0..1100}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~0.01~0.001~0.01

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=1101}] ~~~ tp @a -82 -31 -28 facing -66 -31 -28
execute @e[name=timeline,scores={time=1101}] ~~~ function lib/states/timeline/disable

