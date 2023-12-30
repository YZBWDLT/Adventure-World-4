# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 关卡功能 ---
### time.timeline每秒循环 | 本关的active.timeline=1，会自动每刻+1分
scoreboard players remove @e[name=timeline,scores={time=20..}] time 20
### 在随机时间后流下岩浆 | 剩余8秒时提醒；流出经过10秒后收回并重新计时
execute @e[name=timeline,scores={time=19}] ~~~ scoreboard players remove @e[name=lavaWarningLeft] time 1
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=lavaWarningLeft,scores={time=0..8}] ~~~ particle aw:lava_warning -78 -40 35
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=lavaWarningLeft,scores={time=0}] ~~~ fill -89 -40 49 -61 -40 21 lava[] keep
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=lavaWarningLeft,scores={time=-10}] ~~~ fill -89 -40 49 -61 -40 21 air[] replace lava[]
execute @e[name=timeline,scores={time=19}] ~~~ scoreboard players random @e[name=lavaWarningLeft,scores={time=-11}] time 20 40
