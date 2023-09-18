# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 420

## --- 封闭入口与出口 ---
fill -155 7 -3 -157 9 -3 minecraft:ice
fill -155 7 16 -157 9 16 minecraft:ice

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -168 13 10

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=420}] ~~~ execute @a[scores={isAlive=1}] -149 7 2 function system/summon/stray2
execute @e[name=level,scores={background=420}] ~~~ execute @a[scores={isAlive=1}] -157 7 8 function system/summon/stray2
execute @e[name=level,scores={background=420}] ~~~ execute @a[scores={isAlive=1}] -164 7 5 function system/summon/stray2
execute @e[name=level,scores={background=420}] ~~~ execute @a[scores={isAlive=1}] -154 7 8 function system/summon/stray2
execute @e[name=level,scores={background=420}] ~~~ execute @a[scores={isAlive=1}] -150 7 14 function system/summon/drowned2
execute @e[name=level,scores={background=420}] ~~~ execute @a[scores={isAlive=1}] -149 7 5 function system/summon/drowned2
execute @e[name=level,scores={background=420}] ~~~ execute @a[scores={isAlive=1}] -158 7 8 function system/summon/drowned3

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## 标题
title @a subtitle §c4-2