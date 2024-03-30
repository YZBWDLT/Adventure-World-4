# ===== 时间线 =====

# --- 锁定玩家视角 阶段2 ---
# 位置从(-89 -27 -19)->(-101 -27 -19)，700刻内玩家位置~-12~~，每刻~-0.017~~
# 视角每刻~0.017~~
execute @e[name=timeline,scores={time=0..700}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~-0.017~~
execute @e[name=timeline,scores={time=0..700}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~0.017~~

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=701}] ~~~ tp @a -95 -31 -5 facing -95 -31 -30
execute @e[name=timeline,scores={time=701}] ~~~ function lib/states/timeline/disable

