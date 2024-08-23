# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---
# -20°/500ticks | -0.04°/tick
execute @e[name=timeline,scores={time=0..500}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~~-0.04 0
execute @e[name=timeline,scores={time=0..500}] ~~~ execute @e[name=facingPosition] ~~~ tp @e[name=playerPosition] ^^4^14

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=501}] ~~~ tp @a -79 18 26 facing -71 18 26
execute @e[name=timeline,scores={time=501}] ~~~ function lib/states/timeline/disable

