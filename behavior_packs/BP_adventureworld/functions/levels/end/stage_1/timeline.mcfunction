# ===== 时间线 =====

# --- 当运行到700刻时，做出“贴近旷野之剑”的动作 ---
# 1s内移动playerPosition ~~~-2
execute @e[name=timeline,scores={time=700..720}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~~~-0.1
execute @e[name=timeline,scores={time=720}] ~~~ effect @a blindness 4 0 true

# --- 当运行到780刻时，做出“抬头”的动作 ---
# 1s内移动playerPosition ~~~1 facingPosition ~~~-1
execute @e[name=timeline,scores={time=780..800}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~~~0.05
execute @e[name=timeline,scores={time=780..800}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~-0.05

# --- 当运行到1000刻时，黑屏，再40刻后回到村庄，触发下一部分 ---
execute @e[name=timeline,scores={time=1000}] ~~~ function lib/black_screen/teleport_respawner
execute @e[name=timeline,scores={time=1040}] ~~~ function levels/end/stage_2/start
