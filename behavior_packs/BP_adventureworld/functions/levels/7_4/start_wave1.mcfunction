# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 740

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -223 -18 98 -223 -16 100 minecraft:cobblestone_wall["wall_block_type":"nether_brick"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -247 -5 101

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=740}] ~~~ execute @a[scores={isAlive=1}] -225 -17 109 function system/summon/magma_cube_small1
execute @e[name=level,scores={background=740}] ~~~ execute @a[scores={isAlive=1}] -238 -17 91 function system/summon/magma_cube_small1
execute @e[name=level,scores={background=740}] ~~~ execute @a[scores={isAlive=1}] -231 -7 86 function system/summon/magma_cube_small1
execute @e[name=level,scores={background=740}] ~~~ execute @a[scores={isAlive=1}] -242 -16 99 function system/summon/magma_cube_small2
execute @e[name=level,scores={background=740}] ~~~ execute @a[scores={isAlive=1}] -236 -8 93 function system/summon/magma_cube_small2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c7-4