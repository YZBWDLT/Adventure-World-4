# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 330

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -162 -21 26 -164 -19 26 minecraft:cobblestone_wall["wall_block_type":"prismarine"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -163 -16 29

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=330}] ~~~ execute @a[scores={isAlive=1}] -169 -32 29 function system/summon/creeper1
execute @e[name=level,scores={background=330}] ~~~ execute @a[scores={isAlive=1}] -163 -28 24 function system/summon/creeper1
execute @e[name=level,scores={background=330}] ~~~ execute @a[scores={isAlive=1}] -157 -24 29 function system/summon/guardian1
execute @e[name=level,scores={background=330}] ~~~ execute @a[scores={isAlive=1}] -163 -32 33 function system/summon/guardian1
execute @e[name=level,scores={background=330}] ~~~ execute @a[scores={isAlive=1}] -163 -32 25 function system/summon/drowned2
execute @e[name=level,scores={background=330}] ~~~ execute @a[scores={isAlive=1}] -154 -32 29 function system/summon/drowned2

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave1

## 标题
title @a subtitle §c3-3