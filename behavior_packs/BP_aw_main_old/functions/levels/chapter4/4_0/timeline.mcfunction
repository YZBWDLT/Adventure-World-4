# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---

# facing ~~~-2/250ticks | ~~~-0.008
# player ~~~-2/250ticks | ~~~-0.008

execute @e[name=timeline,scores={time=0..250}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~-0.008
execute @e[name=timeline,scores={time=0..250}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~~~-0.008

# --- 锁定玩家视角 阶段2 ---

# facing ~-12~2~-2/250ticks | ~-0.048~0.008~-0.008/tick

execute @e[name=timeline,scores={time=251..500}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~-0.048~0.005~-0.005

# --- 锁定玩家视角 阶段3 ---

# facing ~~-10~10/500ticks | ~~-0.02~0.02/tick

execute @e[name=timeline,scores={time=501}] ~~~ tp @e[name=playerPosition] -157 16 -13
execute @e[name=timeline,scores={time=501}] ~~~ tp @e[name=facingPosition] -156 16 -13

execute @e[name=timeline,scores={time=501..1000}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~-0.02~0.02

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=1001}] ~~~ tp @a -173 17 -7 facing -173 17 -18
execute @e[name=timeline,scores={time=1001}] ~~~ function lib/states/timeline/disable

