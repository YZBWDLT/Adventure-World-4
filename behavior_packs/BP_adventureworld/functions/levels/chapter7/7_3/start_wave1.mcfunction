# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 730

## --- 封闭入口与出口 ---
fill -192 -18 96 -192 -16 98 minecraft:cobblestone_wall["wall_block_type":"nether_brick"]
fill -217 -18 98 -217 -16 100 minecraft:cobblestone_wall["wall_block_type":"nether_brick"]

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -203 -12 114

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=730}] ~~~ execute @a[scores={isAlive=1}] -200 -18 98 function system/summon/skeleton1
execute @e[name=level,scores={background=730}] ~~~ execute @a[scores={isAlive=1}] -195 -18 96 function system/summon/skeleton1
execute @e[name=level,scores={background=730}] ~~~ execute @a[scores={isAlive=1}] -203 -17 104 function system/summon/zombified_piglin2
execute @e[name=level,scores={background=730}] ~~~ execute @a[scores={isAlive=1}] -202 -16 96 function system/summon/zombified_piglin2
execute @e[name=level,scores={background=730}] ~~~ execute @a[scores={isAlive=1}] -207 -16 90 function system/summon/skeleton2
execute @e[name=level,scores={background=730}] ~~~ execute @a[scores={isAlive=1}] -214 -18 95 function system/summon/skeleton2
execute @e[name=level,scores={background=730}] ~~~ execute @a[scores={isAlive=1}] -205 -16 99 function system/summon/zombified_piglin3

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## 标题
title @a subtitle §c7-3