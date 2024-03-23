# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---
# 此时为玩家视角绕柱旋转
# 整个过程玩家旋转+45°，持续500刻，每刻旋转0.09°
execute @e[name=timeline,scores={time=0..500}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~~0.09 0
execute @e[name=timeline,scores={time=0..500}] ~~~ execute @e[name=facingPosition] ~~~ tp @e[name=playerPosition] ^^2^5

# --- 锁定玩家视角 阶段2 ---
# 此时为玩家面向墙壁图案
# 先将玩家传送过来
execute @e[name=timeline,scores={time=501}] ~~~ tp @e[name=playerPosition] -119 1 -4
execute @e[name=timeline,scores={time=501}] ~~~ tp @e[name=facingPosition] -123 1 -3
# 整个过程，facingPosition ~~4~4，持续500刻，每刻~~0.008~0.008
execute @e[name=timeline,scores={time=501..1000}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~0.008~0.008

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=1001}] ~~~ tp @a -117 1 -6 facing -117 1 -3
execute @e[name=timeline,scores={time=1001}] ~~~ function lib/states/timeline/disable

