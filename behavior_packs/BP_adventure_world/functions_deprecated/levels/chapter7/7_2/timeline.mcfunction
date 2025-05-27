# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 双重生点 ---

### 每秒随机设定一次重生点
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players random @e[family=respawner] temp 0 1
### 按照temp.@s随机设定重生点
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=0}] -178 -8 104
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=1}] -164 -7 101

### 将诡异巨型菌上的玩家传送到绯红巨型菌上
tp @a[scores={isAlive=0},x=-181,y=-10,z=101,dx=5,dy=5,dz=5,rx=-85,rxm=-90] -164 -7 101 ~180 45
### 将绯红巨型菌上的玩家传送到诡异巨型菌上
tp @a[scores={isAlive=0},x=-167,y=-8,z=98,dx=5,dy=5,dz=5,rx=-85,rxm=-90] -178 -8 104 ~180 45
