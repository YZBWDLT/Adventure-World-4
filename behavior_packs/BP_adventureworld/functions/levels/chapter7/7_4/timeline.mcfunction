# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 双重生点 ---
## 仅当在关卡中时执行

### 每秒随机设定一次重生点
execute @e[name=level,scores={background=740}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ scoreboard players random @e[family=respawner] temp 0 1
### 按照temp.@s随机设定重生点
execute @e[name=level,scores={background=740}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=0}] -248 -5 104
execute @e[name=level,scores={background=740}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=1}] -222 -12 86

### 将高位重生点上的玩家传送到低位重生点上
execute @e[name=level,scores={background=740}] ~~~ tp @a[scores={isAlive=0},x=-251,y=-11,z=99,dx=12,dy=10,dz=17,rx=-85,rxm=-90] -222 -12 86 ~180 45
### 将低位重生点上的玩家传送到高位重生点上
execute @e[name=level,scores={background=740}] ~~~ tp @a[scores={isAlive=0},x=-229,y=-13,z=81,dx=10,dy=7,dz=10,rx=-85,rxm=-90] -248 -5 104 ~180 0

## --- 关卡结束后，岩浆消失 ---
## 仅当关卡结束后执行

### 岩浆消失
execute @e[name=level,scores={background=741}] ~~~ execute @e[name=timeline,scores={time=40}] ~~~ fill -224 -27 111 -244 -27 85 air[] replace lava[]
execute @e[name=level,scores={background=741}] ~~~ execute @e[name=timeline,scores={time=80}] ~~~ fill -224 -28 111 -244 -28 85 air[] replace lava[]
execute @e[name=level,scores={background=741}] ~~~ execute @e[name=timeline,scores={time=120}] ~~~ fill -224 -29 111 -244 -29 85 air[] replace lava[]
### 时间结束后，停止时间线运行
execute @e[name=level,scores={background=741}] ~~~ execute @e[name=timeline,scores={time=!0..121}] ~~~ function methods/timeline/disable