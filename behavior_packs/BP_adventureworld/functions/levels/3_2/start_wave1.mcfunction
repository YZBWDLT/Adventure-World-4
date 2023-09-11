# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 320

## 清除水
fill -191 -21 0 -170 -18 21 minecraft:sponge[] replace minecraft:water
fill -191 -21 0 -170 -18 21 minecraft:sponge[] replace minecraft:flowing_water
fill -191 -21 0 -170 -18 21 minecraft:air[] replace sponge["sponge_type":"wet"]
fill -191 -21 0 -170 -18 21 minecraft:air[] replace sponge["sponge_type":"dry"]

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -171 -21 13 -173 -19 13 minecraft:cobblestone_wall["wall_block_type":"prismarine"]

## 复制建筑（如果需要的话）
structure load 3_2_phase1 -192 -22 -1 0_degrees none false true

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -182 -15 21

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=320}] ~~~ execute @a[scores={isAlive=1}] -180 -17 9 function system/summon/skeleton1
execute @e[name=level,scores={background=320}] ~~~ execute @a[scores={isAlive=1}] -180 -21 2 function system/summon/drowned2
execute @e[name=level,scores={background=320}] ~~~ execute @a[scores={isAlive=1}] -183 -21 10 function system/summon/drowned2
execute @e[name=level,scores={background=320}] ~~~ execute @a[scores={isAlive=1}] -191 -21 10 function system/summon/drowned1
execute @e[name=level,scores={background=320}] ~~~ execute @a[scores={isAlive=1}] -181 -17 12 function system/summon/drowned1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c3-2