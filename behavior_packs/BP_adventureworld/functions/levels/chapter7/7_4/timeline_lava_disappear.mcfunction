# ===== 7-4岩浆消失 =====

execute @e[name=timeline,scores={time=40}] ~~~ fill -224 -27 111 -244 -27 85 air[] replace lava[]
execute @e[name=timeline,scores={time=80}] ~~~ fill -224 -28 111 -244 -28 85 air[] replace lava[]
execute @e[name=timeline,scores={time=120}] ~~~ fill -224 -29 111 -244 -29 85 air[] replace lava[]
## 对于异常或超时的时间值，停止时间线的运行
execute @e[name=timeline,scores={time=!0..121}] ~~~ function methods/timeline/disable