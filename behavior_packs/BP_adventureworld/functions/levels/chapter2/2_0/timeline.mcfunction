# ===== 时间线 =====

# --- 锁定玩家视角 阶段1 ---
# 此时为玩家视角绕柱旋转
# 整个过程玩家旋转-24°，持续600刻，每刻旋转-0.04°
execute @e[name=timeline,scores={time=0..600}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~~-0.04 0
execute @e[name=timeline,scores={time=0..600}] ~~~ execute @e[name=facingPosition] ~~~ tp @e[name=playerPosition] ^^4^14

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=601}] ~~~ tp @a -79 18 26 facing -71 18 26
execute @e[name=timeline,scores={time=601}] ~~~ function lib/states/timeline/disable

