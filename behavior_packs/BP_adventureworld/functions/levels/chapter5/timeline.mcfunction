# ===== 时间线 =====

# --- 锁定玩家视角 阶段2 ---
# facing ~12~~/900ticks | ~0.013~~/tick
# player ~-12~~/900ticks | ~-0.013/tick

execute @e[name=timeline,scores={time=0..900}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~-0.013~~
execute @e[name=timeline,scores={time=0..900}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~0.013~~

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=901}] ~~~ tp @a -95 -31 -5 facing -95 -31 -30
execute @e[name=timeline,scores={time=901}] ~~~ function lib/states/timeline/disable

