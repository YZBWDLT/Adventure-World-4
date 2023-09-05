# 时间记录器

## 每1秒刷新1次
scoreboard players add @e[name=tick] time 1
scoreboard players remove @e[name=tick,scores={time=20..}] time 20

## 当timeTick到达19时，即1秒，为玩家添加分数
execute @e[name=level,scores={background=100..}] ~~~ execute @e[name=tick,scores={time=19..}] ~~~ scoreboard players add @e[name=playedSecond] time 1
execute @e[name=level,scores={background=100..}] ~~~ execute @e[name=playedSecond,scores={time=60..}] ~~~ scoreboard players add @e[name=playedMinute] time 1
execute @e[name=level,scores={background=100..}] ~~~ scoreboard players remove @e[name=playedSecond,scores={time=60..}] time 60