execute @e[name=level,scores={stats=340}] ~~~ scoreboard players add @e[name=timeline] time 1

## 清除水 - active的值即为清除次数，每5秒清除1次
execute @e[name=level,scores={stats=340}] ~~~ execute @e[name=timeline,scores={active=1..,time=4}] ~~~ fill -169 -15 27 -177 15 19 minecraft:sponge[] replace minecraft:water
execute @e[name=level,scores={stats=340}] ~~~ execute @e[name=timeline,scores={active=1..,time=4}] ~~~ fill -169 -15 27 -177 15 19 minecraft:sponge[] replace minecraft:flowing_water
execute @e[name=level,scores={stats=340}] ~~~ execute @e[name=timeline,scores={active=1..,time=4}] ~~~ fill -169 -15 27 -177 15 19 minecraft:air[] replace minecraft:sponge["sponge_type":"wet"]
execute @e[name=level,scores={stats=340}] ~~~ execute @e[name=timeline,scores={active=1..,time=4}] ~~~ fill -169 -15 27 -177 15 19 minecraft:air[] replace minecraft:sponge["sponge_type":"dry"]

execute @e[name=level,scores={stats=340}] ~~~ execute @e[name=timeline,scores={active=1..,time=5}] ~~~ scoreboard players add @s active 1
execute @e[name=level,scores={stats=340}] ~~~ execute @e[name=timeline,scores={active=1..,time=5}] ~~~ scoreboard players set @s time 0

## 放置结构（只执行一次，且在第2次之后开始放置）
execute @e[name=level,scores={stats=340}] ~~~ execute @e[name=timeline,scores={active=2,time=2}] ~~~ structure load 3_4_layer1_nowater -178 -16 18