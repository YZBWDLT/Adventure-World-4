# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 610

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -75 -31 -46 -76 -29 -46 minecraft:pointed_dripstone["hanging":false]
fill -82 -31 -64 -82 -29 -63 minecraft:pointed_dripstone["hanging":true]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -66 -30 -54

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=610}] ~~~ execute @a[tag=alive] -72 -31 -48 function system/summon/zombie2
execute @e[name=level,scores={background=610}] ~~~ execute @a[tag=alive] -76 -31 -52 function system/summon/zombie2
execute @e[name=level,scores={background=610}] ~~~ execute @a[tag=alive] -74 -31 -59 function system/summon/zombie2
execute @e[name=level,scores={background=610}] ~~~ execute @a[tag=alive] -78 -31 -62 function system/summon/cave_spider1
execute @e[name=level,scores={background=610}] ~~~ execute @a[tag=alive] -83 -27 -52 function system/summon/creeper1
execute @e[name=level,scores={background=610}] ~~~ execute @a[tag=alive] -69 -27 -59 function system/summon/skeleton2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c6-1

gamerule falldamage true
tellraw @a {"rawtext":[{"text":"§c注意，本关有摔落伤害！"}]}