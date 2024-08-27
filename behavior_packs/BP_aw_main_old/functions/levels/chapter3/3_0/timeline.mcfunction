# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---
# +30°/500ticks | +0.06°/tick

execute @e[name=timeline,scores={time=0..500}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~~0.06 0
execute @e[name=timeline,scores={time=0..500}] ~~~ execute @e[name=facingPosition] ~~~ tp @e[name=playerPosition] ^^1.5^6

# --- 锁定玩家视角 阶段2 ---
# facing ~~8~/280ticks | ~~0.029~/tick

execute @e[name=timeline,scores={time=501}] ~~~ tp @e[name=playerPosition] -161 -18 21
execute @e[name=timeline,scores={time=501}] ~~~ tp @e[name=facingPosition] -167 -21 23 

execute @e[name=timeline,scores={time=501..780}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~0.029~

# --- 锁定玩家视角 阶段3 ---
# facing ~~4~-4/280ticks | ~~0.014~-0.014/tick

execute @e[name=timeline,scores={time=781}] ~~~ tp @e[name=playerPosition] -179 -21 30
execute @e[name=timeline,scores={time=781}] ~~~ tp @e[name=facingPosition] -185 -20 31

execute @e[name=timeline,scores={time=781..1060}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~0.014~-0.014


# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=1061}] ~~~ tp @a -173 -21 31 facing -172 -21 24
execute @e[name=timeline,scores={time=1061}] ~~~ function lib/states/timeline/disable

