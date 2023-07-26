# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] stats 430

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -155 -12 16 -157 -10 16 minecraft:ice
fill -156 -18 5 -158 -18 7 ice[] replace structure_void[]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -151 -7 -5

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -159 -9 4 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -153 -8 3 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -151 -7 9 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -150 -8 14 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -149 -9 -0 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -162 -6 -0 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -163 -8 7 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -162 -9 14 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -156 -10 14 function system/summon/drowned1
execute @e[name=level,scores={stats=430}] ~~~ execute @a[tag=alive] -156 -6 6 function system/summon/drowned1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c4-3