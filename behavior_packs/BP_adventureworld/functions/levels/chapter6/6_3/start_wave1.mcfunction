# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 630

## --- 封闭入口与出口 ---
fill -76 -37 -17 -74 -35 -17 minecraft:deepslate_brick_wall
fill -74 -39 8 -76 -37 8 minecraft:deepslate_brick_wall

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -82 -34 -16

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=630}] ~~~ execute @a[scores={isAlive=1}] -74 -35 -2 function system/summon/drowned_with_trident2
execute @e[name=level,scores={background=630}] ~~~ execute @a[scores={isAlive=1}] -79 -39 3 function system/summon/drowned_with_trident2
execute @e[name=level,scores={background=630}] ~~~ execute @a[scores={isAlive=1}] -71 -37 -13 function system/summon/drowned_with_trident2

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## 标题
title @a subtitle §c6-3

time set midnight