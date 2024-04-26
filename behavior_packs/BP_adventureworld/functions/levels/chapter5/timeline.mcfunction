# ===== 时间线 =====

# --- 锁定玩家视角 阶段2 ---
# facing ~12~~/580ticks | ~0.021~~/tick
# player ~-12~~/580ticks | ~-0.021/tick

execute @e[name=timeline,scores={time=0..700}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~-0.021~~
execute @e[name=timeline,scores={time=0..700}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~0.021~~

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=701}] ~~~ tp @a -95 -31 -5 facing -95 -31 -30
execute @e[name=timeline,scores={time=701}] ~~~ function lib/states/timeline/disable

