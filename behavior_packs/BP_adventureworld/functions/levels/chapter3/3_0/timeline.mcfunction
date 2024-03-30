# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---
# 此时为玩家视角旋转
# 整个过程玩家旋转30°，持续600刻，每刻旋转0.05°
execute @e[name=timeline,scores={time=0..600}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~~0.05 0
execute @e[name=timeline,scores={time=0..600}] ~~~ execute @e[name=facingPosition] ~~~ tp @e[name=playerPosition] ^^1.5^6

# --- 锁定玩家视角 阶段2 ---
# 此时为玩家视角绕柱旋转
# 整个过程面向视角提高8.75格，持续350刻，每刻~~0.025~
execute @e[name=timeline,scores={time=601}] ~~~ tp @e[name=playerPosition] -161 -18 21
execute @e[name=timeline,scores={time=601}] ~~~ tp @e[name=facingPosition] -167 -21 23 

execute @e[name=timeline,scores={time=601..950}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~0.025~

# --- 锁定玩家视角 阶段3 ---
# 此时为玩家视角绕柱旋转
# 整个过程面向视角~~4~-4，持续350刻，每刻~~0.012~-0.012
execute @e[name=timeline,scores={time=951}] ~~~ tp @e[name=playerPosition] -179 -21 30
execute @e[name=timeline,scores={time=951}] ~~~ tp @e[name=facingPosition] -185 -21 31

execute @e[name=timeline,scores={time=951..1300}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~0.012~-0.012


# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=1301}] ~~~ tp @a -173 -21 31 facing -172 -21 24
execute @e[name=timeline,scores={time=1301}] ~~~ function lib/states/timeline/disable

