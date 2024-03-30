# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---
# 玩家视角左平移2格，200刻内玩家位置和视角位置同时~~~-2，每刻~~~-0.01
execute @e[name=timeline,scores={time=0..200}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~-0.01
execute @e[name=timeline,scores={time=0..200}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~~~-0.01

# --- 锁定玩家视角 阶段2 ---
# 视角从(-168 17 -12)->(-180 19 -14)，400刻内视角位置~-12~2~-2，每刻~-0.03~0.005~-0.005
execute @e[name=timeline,scores={time=201..600}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~-0.03~0.005~-0.005

# --- 锁定玩家视角 阶段3 ---
# 视角从(-156 16 -13)->(-156 6 -3)，500刻内视角位置~~-10~10，每刻~~-0.02~0.02
execute @e[name=timeline,scores={time=601}] ~~~ tp @e[name=playerPosition] -157 16 -13
execute @e[name=timeline,scores={time=601}] ~~~ tp @e[name=facingPosition] -156 16 -13

execute @e[name=timeline,scores={time=601..1100}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~-0.02~0.02


# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=1101}] ~~~ tp @a -173 17 -7 facing -173 17 -18
execute @e[name=timeline,scores={time=1101}] ~~~ function lib/states/timeline/disable

