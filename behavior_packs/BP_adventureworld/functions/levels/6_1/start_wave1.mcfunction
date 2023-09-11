# 开始游戏 - 第一波

## --- 设置level分数 ---
scoreboard players set @e[name=level] background 610

## --- 清除原始怪物 ---
## 防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## --- 封闭入口与出口 ---
### 入口
fill -75 -31 -46 -77 -29 -46 pointed_dripstone["hanging":false]
fill -75 -29 -46 -75 -30 -46 pointed_dripstone["hanging":true]
fill -77 -29 -46 -77 -29 -46 pointed_dripstone["hanging":true,"dripstone_thickness":"merge"]
fill -75 -31 -45 -77 -29 -45 barrier[] keep
### 出口
fill -82 -31 -64 -82 -29 -62 pointed_dripstone["hanging":true]
fill -82 -31 -63 -82 -30 -63 pointed_dripstone["hanging":false]
fill -82 -31 -64 -82 -31 -64 pointed_dripstone["hanging":false,"dripstone_thickness":"merge"]
fill -83 -31 -62 -83 -29 -64 barrier[] keep

## --- 设置重生点 ---
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -66 -30 -54

## --- 生成生物 ---
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=610}] ~~~ execute @a[scores={isAlive=1}] -72 -31 -48 function system/summon/zombie2
execute @e[name=level,scores={background=610}] ~~~ execute @a[scores={isAlive=1}] -76 -31 -52 function system/summon/zombie2
execute @e[name=level,scores={background=610}] ~~~ execute @a[scores={isAlive=1}] -74 -31 -59 function system/summon/zombie2
execute @e[name=level,scores={background=610}] ~~~ execute @a[scores={isAlive=1}] -78 -31 -62 function system/summon/cave_spider1
execute @e[name=level,scores={background=610}] ~~~ execute @a[scores={isAlive=1}] -83 -27 -52 function system/summon/creeper1
execute @e[name=level,scores={background=610}] ~~~ execute @a[scores={isAlive=1}] -69 -27 -59 function system/summon/skeleton2

## --- 开启所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave1

## --- 标题 ---
title @a subtitle §c6-1

## --- 其他附加功能 ---
gamerule falldamage true
tellraw @a {"rawtext":[{"text":"§c注意，本关有摔落伤害！"}]}