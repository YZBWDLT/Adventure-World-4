# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---
# +45°/410ticks | +0.110°/tick

execute @e[name=timeline,scores={time=0..410}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~~0.11 0
execute @e[name=timeline,scores={time=0..410}] ~~~ execute @e[name=facingPosition] ~~~ tp @e[name=playerPosition] ^^2^5

# --- 锁定玩家视角 阶段2 ---
# ~~4~4/410ticks | ~~0.010~0.010/tick

execute @e[name=timeline,scores={time=411}] ~~~ tp @e[name=playerPosition] -119 1 -4
execute @e[name=timeline,scores={time=411}] ~~~ tp @e[name=facingPosition] -123 1 -3

execute @e[name=timeline,scores={time=411..820}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~0.010~0.010

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=821}] ~~~ tp @a -117 1 -6 facing -117 1 -3
execute @e[name=timeline,scores={time=821}] ~~~ function lib/states/timeline/disable

