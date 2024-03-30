# ===== 时间线 =====

# --- 检测玩家到达水通道迷宫出口 ---

## 准备传送玩家和锁定相机的位置
execute @e[name=timeline,scores={active=3,time=0}] ~~~ execute @a[x=-185,y=-21,z=27,dx=4,dy=4,dz=4] ~~~ tp @e[name=playerPosition] -76 6 -57
execute @e[name=timeline,scores={active=3,time=0}] ~~~ execute @a[x=-185,y=-21,z=27,dx=4,dy=4,dz=4] ~~~ tp @e[name=facingPosition] -90 -13 78 facing @e[name=playerPosition]
execute @e[name=timeline,scores={active=3,time=0}] ~~~ execute @a[x=-185,y=-21,z=27,dx=4,dy=4,dz=4] ~~~ function lib/states/dialogue/enable_lock_camera
execute @e[name=timeline,scores={active=3,time=0}] ~~~ execute @a[x=-185,y=-21,z=27,dx=4,dy=4,dz=4] ~~~ function lib/states/timeline/enable

# --- 锁定玩家视角 阶段1 ---
# 回顾视角旋转
# 整个过程玩家旋转20°，持续400刻，每刻旋转0.05°
execute @e[name=timeline,scores={time=0..400}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~~0.05 0
execute @e[name=timeline,scores={time=0..400}] ~~~ execute @e[name=facingPosition] ~~~ tp @e[name=playerPosition] ^^19^19

# --- 锁定玩家视角 阶段2 ---
# 回顾沙漠神殿
# 整个过程面向视角提高10格，持续500刻，每刻~~0.02~
execute @e[name=timeline,scores={time=401}] ~~~ tp @e[name=playerPosition] -122 14 35
execute @e[name=timeline,scores={time=401}] ~~~ tp @e[name=facingPosition] -138 12 17

execute @e[name=timeline,scores={time=401..900}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~0.02~

# --- 全过程结束后，传送玩家到初始位置并结束 ---
execute @e[name=timeline,scores={time=901}] ~~~ tp @a -184 -21 29 270 0
## 移除先前创建的两个常加载区域
execute @e[name=timeline,scores={time=901}] ~~~ tickingarea remove temp1
execute @e[name=timeline,scores={time=901}] ~~~ tickingarea remove temp2

execute @e[name=timeline,scores={time=901}] ~~~ function lib/states/timeline/disable

