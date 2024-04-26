# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---

# facing ~~~-2/200ticks | ~~~-0.01
# player ~~~-2/200ticks | ~~~-0.01

execute @e[name=timeline,scores={time=0..200}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~-0.01
execute @e[name=timeline,scores={time=0..200}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~~~-0.01

# --- 锁定玩家视角 阶段2 ---

# facing ~-12~2~-2/250ticks | ~-0.048~0.008~-0.008/tick

execute @e[name=timeline,scores={time=201..450}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~-0.048~0.005~-0.005

# --- 锁定玩家视角 阶段3 ---

# facing ~~-9~9/450ticks | ~~-0.02~0.02/tick

execute @e[name=timeline,scores={time=451}] ~~~ tp @e[name=playerPosition] -157 16 -13
execute @e[name=timeline,scores={time=451}] ~~~ tp @e[name=facingPosition] -156 16 -13

execute @e[name=timeline,scores={time=451..900}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~-0.02~0.02

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=901}] ~~~ tp @a -173 17 -7 facing -173 17 -18
execute @e[name=timeline,scores={time=901}] ~~~ function lib/states/timeline/disable

